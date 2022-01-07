
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_kbd {int newleds; int led_urb_submitted; int* leds; int leds_lock; TYPE_1__* led; int usbdev; } ;
struct input_dev {int led; } ;
struct TYPE_2__ {int dev; } ;


 unsigned int EV_LED ;
 int GFP_ATOMIC ;
 int LED_CAPSL ;
 int LED_COMPOSE ;
 int LED_KANA ;
 int LED_NUML ;
 int LED_SCROLLL ;
 struct usb_kbd* input_get_drvdata (struct input_dev*) ;
 int pr_err (char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_bit (int ,int ) ;
 scalar_t__ usb_submit_urb (TYPE_1__*,int ) ;

__attribute__((used)) static int usb_kbd_event(struct input_dev *dev, unsigned int type,
    unsigned int code, int value)
{
 unsigned long flags;
 struct usb_kbd *kbd = input_get_drvdata(dev);

 if (type != EV_LED)
  return -1;

 spin_lock_irqsave(&kbd->leds_lock, flags);
 kbd->newleds = (!!test_bit(LED_KANA, dev->led) << 3) | (!!test_bit(LED_COMPOSE, dev->led) << 3) |
         (!!test_bit(LED_SCROLLL, dev->led) << 2) | (!!test_bit(LED_CAPSL, dev->led) << 1) |
         (!!test_bit(LED_NUML, dev->led));

 if (kbd->led_urb_submitted){
  spin_unlock_irqrestore(&kbd->leds_lock, flags);
  return 0;
 }

 if (*(kbd->leds) == kbd->newleds){
  spin_unlock_irqrestore(&kbd->leds_lock, flags);
  return 0;
 }

 *(kbd->leds) = kbd->newleds;

 kbd->led->dev = kbd->usbdev;
 if (usb_submit_urb(kbd->led, GFP_ATOMIC))
  pr_err("usb_submit_urb(leds) failed\n");
 else
  kbd->led_urb_submitted = 1;

 spin_unlock_irqrestore(&kbd->leds_lock, flags);

 return 0;
}
