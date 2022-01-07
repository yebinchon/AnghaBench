
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hsi_msg {scalar_t__ status; struct cs_hsi_iface* context; } ;
struct cs_hsi_iface {int lock; int datawait; int data_state; } ;


 scalar_t__ HSI_STATUS_COMPLETED ;
 int SSI_CHANNEL_STATE_WRITING ;
 int cs_hsi_data_write_error (struct cs_hsi_iface*,struct hsi_msg*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int ) ;
 int waitqueue_active (int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void cs_hsi_write_on_data_complete(struct hsi_msg *msg)
{
 struct cs_hsi_iface *hi = msg->context;

 if (msg->status == HSI_STATUS_COMPLETED) {
  spin_lock(&hi->lock);
  hi->data_state &= ~SSI_CHANNEL_STATE_WRITING;
  if (unlikely(waitqueue_active(&hi->datawait)))
   wake_up_interruptible(&hi->datawait);
  spin_unlock(&hi->lock);
 } else {
  cs_hsi_data_write_error(hi, msg);
 }
}
