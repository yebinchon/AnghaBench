
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbox_controller {int num_chans; int poll_hrt; scalar_t__ txdone_poll; int * chans; int node; } ;


 int con_mutex ;
 int hrtimer_cancel (int *) ;
 int list_del (int *) ;
 int mbox_free_channel (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void mbox_controller_unregister(struct mbox_controller *mbox)
{
 int i;

 if (!mbox)
  return;

 mutex_lock(&con_mutex);

 list_del(&mbox->node);

 for (i = 0; i < mbox->num_chans; i++)
  mbox_free_channel(&mbox->chans[i]);

 if (mbox->txdone_poll)
  hrtimer_cancel(&mbox->poll_hrt);

 mutex_unlock(&con_mutex);
}
