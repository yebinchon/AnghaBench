
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct saa7146_dmaqueue {TYPE_2__* curr; } ;
struct saa7146_dev {int slock; } ;
struct TYPE_3__ {int state; int done; int ts; } ;
struct TYPE_4__ {TYPE_1__ vb; } ;


 int BUG_ON (int) ;
 int DEB_D (char*) ;
 int DEB_EE (char*,...) ;
 int assert_spin_locked (int *) ;
 int ktime_get_ns () ;
 int wake_up (int *) ;

void saa7146_buffer_finish(struct saa7146_dev *dev,
      struct saa7146_dmaqueue *q,
      int state)
{
 assert_spin_locked(&dev->slock);
 DEB_EE("dev:%p, dmaq:%p, state:%d\n", dev, q, state);
 DEB_EE("q->curr:%p\n", q->curr);

 BUG_ON(!q->curr);


 if (((void*)0) == q->curr) {
  DEB_D("aiii. no current buffer\n");
  return;
 }

 q->curr->vb.state = state;
 q->curr->vb.ts = ktime_get_ns();
 wake_up(&q->curr->vb.done);

 q->curr = ((void*)0);
}
