
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ib_qp {TYPE_2__* device; } ;
struct TYPE_3__ {int (* drain_sq ) (struct ib_qp*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;


 int __ib_drain_sq (struct ib_qp*) ;
 int stub1 (struct ib_qp*) ;

void ib_drain_sq(struct ib_qp *qp)
{
 if (qp->device->ops.drain_sq)
  qp->device->ops.drain_sq(qp);
 else
  __ib_drain_sq(qp);
}
