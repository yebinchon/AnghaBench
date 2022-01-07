
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ib_srq_attr {int dummy; } ;
struct ib_srq {TYPE_2__* device; } ;
typedef enum ib_srq_attr_mask { ____Placeholder_ib_srq_attr_mask } ib_srq_attr_mask ;
struct TYPE_3__ {int (* modify_srq ) (struct ib_srq*,struct ib_srq_attr*,int,int *) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;


 int EOPNOTSUPP ;
 int stub1 (struct ib_srq*,struct ib_srq_attr*,int,int *) ;

int ib_modify_srq(struct ib_srq *srq,
    struct ib_srq_attr *srq_attr,
    enum ib_srq_attr_mask srq_attr_mask)
{
 return srq->device->ops.modify_srq ?
  srq->device->ops.modify_srq(srq, srq_attr, srq_attr_mask,
         ((void*)0)) : -EOPNOTSUPP;
}
