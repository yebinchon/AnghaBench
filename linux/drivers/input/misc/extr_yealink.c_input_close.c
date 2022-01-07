
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct yealink_dev {int shutdown; int urb_irq; int urb_ctl; } ;
struct input_dev {int dummy; } ;


 struct yealink_dev* input_get_drvdata (struct input_dev*) ;
 int smp_wmb () ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static void input_close(struct input_dev *dev)
{
 struct yealink_dev *yld = input_get_drvdata(dev);

 yld->shutdown = 1;




 smp_wmb();

 usb_kill_urb(yld->urb_ctl);
 usb_kill_urb(yld->urb_irq);

 yld->shutdown = 0;
 smp_wmb();
}
