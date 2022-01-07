
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ib_cq {TYPE_2__* device; } ;
struct TYPE_3__ {int (* resize_cq ) (struct ib_cq*,int,int *) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;


 int EOPNOTSUPP ;
 int stub1 (struct ib_cq*,int,int *) ;

int ib_resize_cq(struct ib_cq *cq, int cqe)
{
 return cq->device->ops.resize_cq ?
  cq->device->ops.resize_cq(cq, cqe, ((void*)0)) : -EOPNOTSUPP;
}
