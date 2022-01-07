
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int nents; } ;
struct hsi_msg {int complete; TYPE_1__ sgt; } ;
struct cs_hsi_iface {int control_state; TYPE_2__* cl; int lock; } ;
struct TYPE_4__ {int device; } ;


 int EBUSY ;
 int EIO ;
 int SSI_CHANNEL_STATE_ERROR ;
 int SSI_CHANNEL_STATE_READING ;
 int SSI_CHANNEL_STATE_WRITING ;
 struct hsi_msg* cs_claim_cmd (struct cs_hsi_iface*) ;
 int cs_hsi_control_write_error (struct cs_hsi_iface*,struct hsi_msg*) ;
 int cs_hsi_read_on_control (struct cs_hsi_iface*) ;
 int cs_hsi_write_on_control_complete ;
 int cs_set_cmd (struct hsi_msg*,int ) ;
 int dev_dbg (int *,char*,int ) ;
 int dev_err (int *,char*,...) ;
 int hsi_async_write (TYPE_2__*,struct hsi_msg*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int cs_hsi_write_on_control(struct cs_hsi_iface *hi, u32 message)
{
 struct hsi_msg *msg;
 int ret;

 spin_lock(&hi->lock);
 if (hi->control_state & SSI_CHANNEL_STATE_ERROR) {
  spin_unlock(&hi->lock);
  return -EIO;
 }
 if (hi->control_state & SSI_CHANNEL_STATE_WRITING) {
  dev_err(&hi->cl->device,
   "Write still pending on control channel.\n");
  spin_unlock(&hi->lock);
  return -EBUSY;
 }
 hi->control_state |= SSI_CHANNEL_STATE_WRITING;
 msg = cs_claim_cmd(hi);
 spin_unlock(&hi->lock);

 cs_set_cmd(msg, message);
 msg->sgt.nents = 1;
 msg->complete = cs_hsi_write_on_control_complete;
 dev_dbg(&hi->cl->device,
  "Sending control message %08X\n", message);
 ret = hsi_async_write(hi->cl, msg);
 if (ret) {
  dev_err(&hi->cl->device,
   "async_write failed with %d\n", ret);
  cs_hsi_control_write_error(hi, msg);
 }
 if (!(hi->control_state & SSI_CHANNEL_STATE_READING)) {
  dev_err(&hi->cl->device, "Restarting control reads\n");
  cs_hsi_read_on_control(hi);
 }

 return 0;
}
