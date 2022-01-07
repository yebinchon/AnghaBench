
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_kbd {scalar_t__* leds; scalar_t__ newleds; int led_urb_submitted; int leds_lock; TYPE_1__* led; int usbdev; } ;
struct urb {int dev; scalar_t__ status; struct usb_kbd* context; } ;
struct TYPE_2__ {int dev; } ;


 int GFP_ATOMIC ;
 int hid_err (int ,char*) ;
 int hid_warn (int ,char*,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ usb_submit_urb (TYPE_1__*,int ) ;

__attribute__((used)) static void usb_kbd_led(struct urb *urb)
{
 unsigned long flags;
 struct usb_kbd *kbd = urb->context;

 if (urb->status)
  hid_warn(urb->dev, "led urb status %d received\n",
    urb->status);

 spin_lock_irqsave(&kbd->leds_lock, flags);

 if (*(kbd->leds) == kbd->newleds){
  kbd->led_urb_submitted = 0;
  spin_unlock_irqrestore(&kbd->leds_lock, flags);
  return;
 }

 *(kbd->leds) = kbd->newleds;

 kbd->led->dev = kbd->usbdev;
 if (usb_submit_urb(kbd->led, GFP_ATOMIC)){
  hid_err(urb->dev, "usb_submit_urb(leds) failed\n");
  kbd->led_urb_submitted = 0;
 }
 spin_unlock_irqrestore(&kbd->leds_lock, flags);

}
