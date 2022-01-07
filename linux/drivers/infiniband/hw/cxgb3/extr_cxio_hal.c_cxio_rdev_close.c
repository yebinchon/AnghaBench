
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cxio_rdev {TYPE_1__* t3cdev_p; int rscp; int entry; } ;
struct TYPE_2__ {int * ulp; } ;


 int cxio_hal_destroy_ctrl_qp (struct cxio_rdev*) ;
 int cxio_hal_destroy_resource (int ) ;
 int cxio_hal_pblpool_destroy (struct cxio_rdev*) ;
 int cxio_hal_rqtpool_destroy (struct cxio_rdev*) ;
 int list_del (int *) ;

void cxio_rdev_close(struct cxio_rdev *rdev_p)
{
 if (rdev_p) {
  cxio_hal_pblpool_destroy(rdev_p);
  cxio_hal_rqtpool_destroy(rdev_p);
  list_del(&rdev_p->entry);
  cxio_hal_destroy_ctrl_qp(rdev_p);
  cxio_hal_destroy_resource(rdev_p->rscp);
  rdev_p->t3cdev_p->ulp = ((void*)0);
 }
}
