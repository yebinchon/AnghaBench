
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct hanwang {int irq; } ;


 struct hanwang* input_get_drvdata (struct input_dev*) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static void hanwang_close(struct input_dev *dev)
{
 struct hanwang *hanwang = input_get_drvdata(dev);

 usb_kill_urb(hanwang->irq);
}
