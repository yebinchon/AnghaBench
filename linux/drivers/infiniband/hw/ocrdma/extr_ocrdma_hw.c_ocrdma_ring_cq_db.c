
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {scalar_t__ db; } ;
struct ocrdma_dev {TYPE_1__ nic_info; } ;


 int OCRDMA_DB_CQ_NUM_POPPED_SHIFT ;
 scalar_t__ OCRDMA_DB_CQ_OFFSET ;
 int OCRDMA_DB_CQ_REARM_SHIFT ;
 int OCRDMA_DB_CQ_RING_ID_EXT_MASK ;
 int OCRDMA_DB_CQ_RING_ID_EXT_MASK_SHIFT ;
 int OCRDMA_DB_CQ_RING_ID_MASK ;
 int OCRDMA_DB_CQ_SOLICIT_SHIFT ;
 int iowrite32 (int,scalar_t__) ;

void ocrdma_ring_cq_db(struct ocrdma_dev *dev, u16 cq_id, bool armed,
         bool solicited, u16 cqe_popped)
{
 u32 val = cq_id & OCRDMA_DB_CQ_RING_ID_MASK;

 val |= ((cq_id & OCRDMA_DB_CQ_RING_ID_EXT_MASK) <<
      OCRDMA_DB_CQ_RING_ID_EXT_MASK_SHIFT);

 if (armed)
  val |= (1 << OCRDMA_DB_CQ_REARM_SHIFT);
 if (solicited)
  val |= (1 << OCRDMA_DB_CQ_SOLICIT_SHIFT);
 val |= (cqe_popped << OCRDMA_DB_CQ_NUM_POPPED_SHIFT);
 iowrite32(val, dev->nic_info.db + OCRDMA_DB_CQ_OFFSET);
}
