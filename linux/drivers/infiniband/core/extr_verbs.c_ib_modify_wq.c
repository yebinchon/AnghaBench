
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ib_wq_attr {int dummy; } ;
struct ib_wq {TYPE_2__* device; } ;
struct TYPE_3__ {int (* modify_wq ) (struct ib_wq*,struct ib_wq_attr*,int ,int *) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;


 int EOPNOTSUPP ;
 int stub1 (struct ib_wq*,struct ib_wq_attr*,int ,int *) ;

int ib_modify_wq(struct ib_wq *wq, struct ib_wq_attr *wq_attr,
   u32 wq_attr_mask)
{
 int err;

 if (!wq->device->ops.modify_wq)
  return -EOPNOTSUPP;

 err = wq->device->ops.modify_wq(wq, wq_attr, wq_attr_mask, ((void*)0));
 return err;
}
