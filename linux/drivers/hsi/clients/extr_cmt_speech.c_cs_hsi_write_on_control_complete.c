
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hsi_msg {int status; struct cs_hsi_iface* context; } ;
struct cs_hsi_iface {TYPE_1__* cl; int lock; int control_state; } ;
struct TYPE_2__ {int device; } ;


 int HSI_STATUS_COMPLETED ;
 int HSI_STATUS_ERROR ;
 int SSI_CHANNEL_STATE_WRITING ;
 int cs_hsi_control_write_error (struct cs_hsi_iface*,struct hsi_msg*) ;
 int cs_release_cmd (struct hsi_msg*) ;
 int dev_err (int *,char*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void cs_hsi_write_on_control_complete(struct hsi_msg *msg)
{
 struct cs_hsi_iface *hi = msg->context;
 if (msg->status == HSI_STATUS_COMPLETED) {
  spin_lock(&hi->lock);
  hi->control_state &= ~SSI_CHANNEL_STATE_WRITING;
  cs_release_cmd(msg);
  spin_unlock(&hi->lock);
 } else if (msg->status == HSI_STATUS_ERROR) {
  cs_hsi_control_write_error(hi, msg);
 } else {
  dev_err(&hi->cl->device,
   "unexpected status in control write callback %d\n",
   msg->status);
 }
}
