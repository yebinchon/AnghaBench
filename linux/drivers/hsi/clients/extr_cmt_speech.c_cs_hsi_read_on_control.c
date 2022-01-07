
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ nents; } ;
struct hsi_msg {int complete; TYPE_1__ sgt; } ;
struct cs_hsi_iface {int control_state; TYPE_2__* cl; int lock; } ;
struct TYPE_4__ {int device; } ;


 int SSI_CHANNEL_STATE_ERROR ;
 int SSI_CHANNEL_STATE_READING ;
 struct hsi_msg* cs_claim_cmd (struct cs_hsi_iface*) ;
 int cs_hsi_control_read_error (struct cs_hsi_iface*,struct hsi_msg*) ;
 int cs_hsi_peek_on_control_complete ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*,int) ;
 int hsi_async_read (TYPE_2__*,struct hsi_msg*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void cs_hsi_read_on_control(struct cs_hsi_iface *hi)
{
 struct hsi_msg *msg;
 int ret;

 spin_lock(&hi->lock);
 if (hi->control_state & SSI_CHANNEL_STATE_READING) {
  dev_err(&hi->cl->device, "Control read already pending (%d)\n",
   hi->control_state);
  spin_unlock(&hi->lock);
  return;
 }
 if (hi->control_state & SSI_CHANNEL_STATE_ERROR) {
  dev_err(&hi->cl->device, "Control read error (%d)\n",
   hi->control_state);
  spin_unlock(&hi->lock);
  return;
 }
 hi->control_state |= SSI_CHANNEL_STATE_READING;
 dev_dbg(&hi->cl->device, "Issuing RX on control\n");
 msg = cs_claim_cmd(hi);
 spin_unlock(&hi->lock);

 msg->sgt.nents = 0;
 msg->complete = cs_hsi_peek_on_control_complete;
 ret = hsi_async_read(hi->cl, msg);
 if (ret)
  cs_hsi_control_read_error(hi, msg);
}
