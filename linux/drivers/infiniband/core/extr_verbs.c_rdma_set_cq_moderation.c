
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct ib_cq {TYPE_2__* device; } ;
struct TYPE_3__ {int (* modify_cq ) (struct ib_cq*,int ,int ) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;


 int EOPNOTSUPP ;
 int stub1 (struct ib_cq*,int ,int ) ;

int rdma_set_cq_moderation(struct ib_cq *cq, u16 cq_count, u16 cq_period)
{
 return cq->device->ops.modify_cq ?
  cq->device->ops.modify_cq(cq, cq_count,
       cq_period) : -EOPNOTSUPP;
}
