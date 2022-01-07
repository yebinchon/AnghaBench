
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cs_hsi_iface {TYPE_1__* cl; int lock; int datawait; int data_state; } ;
struct TYPE_2__ {int device; } ;


 int CS_HSI_TRANSFER_TIMEOUT_MS ;
 int DEFINE_WAIT (int ) ;
 int EIO ;
 int ERESTARTSYS ;
 int TASK_INTERRUPTIBLE ;
 int cs_state_xfer_active (int ) ;
 int current ;
 int dev_dbg (int *,char*,...) ;
 int finish_wait (int *,int *) ;
 int msecs_to_jiffies (int) ;
 int prepare_to_wait (int *,int *,int ) ;
 int schedule_timeout (int ) ;
 scalar_t__ signal_pending (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int wait ;

__attribute__((used)) static int cs_hsi_data_sync(struct cs_hsi_iface *hi)
{
 int r = 0;

 spin_lock_bh(&hi->lock);

 if (!cs_state_xfer_active(hi->data_state)) {
  dev_dbg(&hi->cl->device, "hsi_data_sync break, idle\n");
  goto out;
 }

 for (;;) {
  int s;
  DEFINE_WAIT(wait);
  if (!cs_state_xfer_active(hi->data_state))
   goto out;
  if (signal_pending(current)) {
   r = -ERESTARTSYS;
   goto out;
  }




  prepare_to_wait(&hi->datawait, &wait, TASK_INTERRUPTIBLE);
  spin_unlock_bh(&hi->lock);
  s = schedule_timeout(
   msecs_to_jiffies(CS_HSI_TRANSFER_TIMEOUT_MS));
  spin_lock_bh(&hi->lock);
  finish_wait(&hi->datawait, &wait);
  if (!s) {
   dev_dbg(&hi->cl->device,
    "hsi_data_sync timeout after %d ms\n",
    CS_HSI_TRANSFER_TIMEOUT_MS);
   r = -EIO;
   goto out;
  }
 }

out:
 spin_unlock_bh(&hi->lock);
 dev_dbg(&hi->cl->device, "hsi_data_sync done with res %d\n", r);

 return r;
}
