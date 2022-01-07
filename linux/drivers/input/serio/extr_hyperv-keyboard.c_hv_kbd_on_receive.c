
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct synth_kbd_protocol_response {int dummy; } ;
struct TYPE_2__ {int type; } ;
struct synth_kbd_msg {TYPE_1__ header; } ;
struct synth_kbd_keystroke {int make_code; int info; } ;
struct hv_kbd_dev {int lock; int hv_serio; int started; int wait_event; int protocol_resp; } ;
struct hv_device {int device; } ;


 int IS_BREAK ;
 int IS_E0 ;
 int IS_E1 ;


 int XTKBD_EMUL0 ;
 int XTKBD_EMUL1 ;
 int XTKBD_RELEASE ;
 int __le16_to_cpu (int ) ;
 int __le32_to_cpu (int ) ;
 int complete (int *) ;
 int dev_err (int *,char*,int) ;
 struct hv_kbd_dev* hv_get_drvdata (struct hv_device*) ;
 int memcpy (int *,struct synth_kbd_msg*,int) ;
 int pm_wakeup_hard_event (int *) ;
 int serio_interrupt (int ,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void hv_kbd_on_receive(struct hv_device *hv_dev,
         struct synth_kbd_msg *msg, u32 msg_length)
{
 struct hv_kbd_dev *kbd_dev = hv_get_drvdata(hv_dev);
 struct synth_kbd_keystroke *ks_msg;
 unsigned long flags;
 u32 msg_type = __le32_to_cpu(msg->header.type);
 u32 info;
 u16 scan_code;

 switch (msg_type) {
 case 128:






  if (msg_length < sizeof(struct synth_kbd_protocol_response)) {
   dev_err(&hv_dev->device,
    "Illegal protocol response packet (len: %d)\n",
    msg_length);
   break;
  }

  memcpy(&kbd_dev->protocol_resp, msg,
   sizeof(struct synth_kbd_protocol_response));
  complete(&kbd_dev->wait_event);
  break;

 case 129:






  if (msg_length < sizeof(struct synth_kbd_keystroke)) {
   dev_err(&hv_dev->device,
    "Illegal keyboard event packet (len: %d)\n",
    msg_length);
   break;
  }

  ks_msg = (struct synth_kbd_keystroke *)msg;
  info = __le32_to_cpu(ks_msg->info);




  spin_lock_irqsave(&kbd_dev->lock, flags);
  if (kbd_dev->started) {
   if (info & IS_E0)
    serio_interrupt(kbd_dev->hv_serio,
      XTKBD_EMUL0, 0);
   if (info & IS_E1)
    serio_interrupt(kbd_dev->hv_serio,
      XTKBD_EMUL1, 0);
   scan_code = __le16_to_cpu(ks_msg->make_code);
   if (info & IS_BREAK)
    scan_code |= XTKBD_RELEASE;

   serio_interrupt(kbd_dev->hv_serio, scan_code, 0);
  }
  spin_unlock_irqrestore(&kbd_dev->lock, flags);






  if (!(info & IS_BREAK))
   pm_wakeup_hard_event(&hv_dev->device);

  break;

 default:
  dev_err(&hv_dev->device,
   "unhandled message type %d\n", msg_type);
 }
}
