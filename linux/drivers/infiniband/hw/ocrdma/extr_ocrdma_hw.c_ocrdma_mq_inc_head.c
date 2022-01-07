
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int head; } ;
struct TYPE_4__ {TYPE_1__ sq; } ;
struct ocrdma_dev {TYPE_2__ mq; } ;


 int OCRDMA_MQ_LEN ;

__attribute__((used)) static inline void ocrdma_mq_inc_head(struct ocrdma_dev *dev)
{
 dev->mq.sq.head = (dev->mq.sq.head + 1) & (OCRDMA_MQ_LEN - 1);
}
