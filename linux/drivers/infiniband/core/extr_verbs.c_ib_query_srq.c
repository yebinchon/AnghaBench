
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ib_srq_attr {int dummy; } ;
struct ib_srq {TYPE_2__* device; } ;
struct TYPE_3__ {int (* query_srq ) (struct ib_srq*,struct ib_srq_attr*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;


 int EOPNOTSUPP ;
 int stub1 (struct ib_srq*,struct ib_srq_attr*) ;

int ib_query_srq(struct ib_srq *srq,
   struct ib_srq_attr *srq_attr)
{
 return srq->device->ops.query_srq ?
  srq->device->ops.query_srq(srq, srq_attr) : -EOPNOTSUPP;
}
