
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_3__ {scalar_t__ id; } ;
struct TYPE_4__ {TYPE_1__ cq; } ;
struct ocrdma_dev {TYPE_2__ mq; } ;


 int ocrdma_mq_cq_handler (struct ocrdma_dev*,scalar_t__) ;
 int ocrdma_qp_cq_handler (struct ocrdma_dev*,scalar_t__) ;

__attribute__((used)) static void ocrdma_cq_handler(struct ocrdma_dev *dev, u16 cq_id)
{

 if (cq_id == dev->mq.cq.id)
  ocrdma_mq_cq_handler(dev, cq_id);
 else
  ocrdma_qp_cq_handler(dev, cq_id);
}
