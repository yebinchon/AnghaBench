
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dbid; } ;
struct ocrdma_srq {scalar_t__ db; TYPE_1__ rq; } ;


 scalar_t__ OCRDMA_DB_GEN2_SRQ_OFFSET ;
 int iowrite32 (int,scalar_t__) ;

__attribute__((used)) static void ocrdma_ring_srq_db(struct ocrdma_srq *srq)
{
 u32 val = srq->rq.dbid | (1 << 16);

 iowrite32(val, srq->db + OCRDMA_DB_GEN2_SRQ_OFFSET);
}
