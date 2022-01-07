
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct hsi_msg {scalar_t__ ttype; struct cs_hsi_iface* context; } ;
struct cs_hsi_iface {scalar_t__ iface_state; int control_state; int lock; TYPE_2__* cl; } ;
struct TYPE_6__ {TYPE_1__* cl; } ;
struct TYPE_5__ {int device; } ;
struct TYPE_4__ {int device; } ;


 scalar_t__ CS_STATE_CLOSED ;
 scalar_t__ HSI_MSG_READ ;
 scalar_t__ HSI_MSG_WRITE ;
 int SSI_CHANNEL_STATE_POLL ;
 int SSI_CHANNEL_STATE_READING ;
 int SSI_CHANNEL_STATE_WRITING ;
 TYPE_3__ cs_char_data ;
 int cs_release_cmd (struct hsi_msg*) ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void cs_cmd_destructor(struct hsi_msg *msg)
{
 struct cs_hsi_iface *hi = msg->context;

 spin_lock(&hi->lock);

 dev_dbg(&cs_char_data.cl->device, "control cmd destructor\n");

 if (hi->iface_state != CS_STATE_CLOSED)
  dev_err(&hi->cl->device, "Cmd flushed while driver active\n");

 if (msg->ttype == HSI_MSG_READ)
  hi->control_state &=
   ~(SSI_CHANNEL_STATE_POLL | SSI_CHANNEL_STATE_READING);
 else if (msg->ttype == HSI_MSG_WRITE &&
   hi->control_state & SSI_CHANNEL_STATE_WRITING)
  hi->control_state &= ~SSI_CHANNEL_STATE_WRITING;

 cs_release_cmd(msg);

 spin_unlock(&hi->lock);
}
