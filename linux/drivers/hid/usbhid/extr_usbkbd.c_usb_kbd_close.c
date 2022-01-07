
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_kbd {int irq; } ;
struct input_dev {int dummy; } ;


 struct usb_kbd* input_get_drvdata (struct input_dev*) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static void usb_kbd_close(struct input_dev *dev)
{
 struct usb_kbd *kbd = input_get_drvdata(dev);

 usb_kill_urb(kbd->irq);
}
