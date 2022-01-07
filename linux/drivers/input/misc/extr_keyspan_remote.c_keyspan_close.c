
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_keyspan {int irq_urb; } ;
struct input_dev {int dummy; } ;


 struct usb_keyspan* input_get_drvdata (struct input_dev*) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static void keyspan_close(struct input_dev *dev)
{
 struct usb_keyspan *remote = input_get_drvdata(dev);

 usb_kill_urb(remote->irq_urb);
}
