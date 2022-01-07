
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct input_dev {int dummy; } ;


 int disable_irq (int ) ;
 scalar_t__ input_get_drvdata (struct input_dev*) ;
 int ixp4xx_spkr_control (unsigned int,int ) ;
 int ixp4xx_timer2_irq ;
 struct input_dev* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static void ixp4xx_spkr_shutdown(struct platform_device *dev)
{
 struct input_dev *input_dev = platform_get_drvdata(dev);
 unsigned int pin = (unsigned int) input_get_drvdata(input_dev);


 disable_irq(ixp4xx_timer2_irq);
 ixp4xx_spkr_control(pin, 0);
}
