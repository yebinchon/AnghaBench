
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxio_ucontext {int lock; int qpids; } ;
struct cxio_rdev {int dummy; } ;


 int INIT_LIST_HEAD (int *) ;
 int mutex_init (int *) ;

void cxio_init_ucontext(struct cxio_rdev *rdev_p, struct cxio_ucontext *uctx)
{
 INIT_LIST_HEAD(&uctx->qpids);
 mutex_init(&uctx->lock);
}
