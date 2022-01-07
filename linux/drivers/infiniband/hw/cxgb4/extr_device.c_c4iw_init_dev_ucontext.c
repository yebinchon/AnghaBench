
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c4iw_rdev {int dummy; } ;
struct c4iw_dev_ucontext {int lock; int cqids; int qpids; } ;


 int INIT_LIST_HEAD (int *) ;
 int mutex_init (int *) ;

void c4iw_init_dev_ucontext(struct c4iw_rdev *rdev,
       struct c4iw_dev_ucontext *uctx)
{
 INIT_LIST_HEAD(&uctx->qpids);
 INIT_LIST_HEAD(&uctx->cqids);
 mutex_init(&uctx->lock);
}
