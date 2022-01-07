
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nents; } ;
struct hsi_msg {scalar_t__ status; int complete; TYPE_1__ sgt; struct cs_hsi_iface* context; } ;
struct cs_hsi_iface {int control_state; TYPE_2__* cl; } ;
struct TYPE_4__ {int device; } ;


 scalar_t__ HSI_STATUS_ERROR ;
 int SSI_CHANNEL_STATE_READING ;
 int WARN_ON (int) ;
 int cs_hsi_control_read_error (struct cs_hsi_iface*,struct hsi_msg*) ;
 int cs_hsi_read_on_control_complete ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*) ;
 int hsi_async_read (TYPE_2__*,struct hsi_msg*) ;

__attribute__((used)) static void cs_hsi_peek_on_control_complete(struct hsi_msg *msg)
{
 struct cs_hsi_iface *hi = msg->context;
 int ret;

 if (msg->status == HSI_STATUS_ERROR) {
  dev_err(&hi->cl->device, "Control peek RX error detected\n");
  cs_hsi_control_read_error(hi, msg);
  return;
 }

 WARN_ON(!(hi->control_state & SSI_CHANNEL_STATE_READING));

 dev_dbg(&hi->cl->device, "Peek on control complete, reading\n");
 msg->sgt.nents = 1;
 msg->complete = cs_hsi_read_on_control_complete;
 ret = hsi_async_read(hi->cl, msg);
 if (ret)
  cs_hsi_control_read_error(hi, msg);
}
