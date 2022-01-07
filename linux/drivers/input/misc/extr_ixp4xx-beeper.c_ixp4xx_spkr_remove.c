
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {scalar_t__ id; } ;
struct input_dev {int dummy; } ;


 int disable_irq (int ) ;
 int free_irq (int ,void*) ;
 int gpio_free (scalar_t__) ;
 scalar_t__ input_get_drvdata (struct input_dev*) ;
 int input_unregister_device (struct input_dev*) ;
 int ixp4xx_spkr_control (unsigned int,int ) ;
 int ixp4xx_timer2_irq ;
 struct input_dev* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int ixp4xx_spkr_remove(struct platform_device *dev)
{
 struct input_dev *input_dev = platform_get_drvdata(dev);
 unsigned int pin = (unsigned int) input_get_drvdata(input_dev);

 input_unregister_device(input_dev);


 disable_irq(ixp4xx_timer2_irq);
 ixp4xx_spkr_control(pin, 0);

 free_irq(ixp4xx_timer2_irq, (void *)dev->id);
 gpio_free(dev->id);

 return 0;
}
