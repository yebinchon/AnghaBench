
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ idx; scalar_t__ val; } ;
struct hvutil_transport {int mode; int release; TYPE_1__ cn_id; int list; int lock; int outmsg_q; } ;


 int HVUTIL_TRANSPORT_CHARDEV ;
 int HVUTIL_TRANSPORT_DESTROY ;
 int cn_del_callback (TYPE_1__*) ;
 int hvt_list_lock ;
 int hvt_transport_free (struct hvutil_transport*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wait_for_completion (int *) ;
 int wake_up_interruptible (int *) ;

void hvutil_transport_destroy(struct hvutil_transport *hvt)
{
 int mode_old;

 mutex_lock(&hvt->lock);
 mode_old = hvt->mode;
 hvt->mode = HVUTIL_TRANSPORT_DESTROY;
 wake_up_interruptible(&hvt->outmsg_q);
 mutex_unlock(&hvt->lock);






 spin_lock(&hvt_list_lock);
 list_del(&hvt->list);
 spin_unlock(&hvt_list_lock);
 if (hvt->cn_id.idx > 0 && hvt->cn_id.val > 0)
  cn_del_callback(&hvt->cn_id);

 if (mode_old == HVUTIL_TRANSPORT_CHARDEV)
  wait_for_completion(&hvt->release);

 hvt_transport_free(hvt);
}
