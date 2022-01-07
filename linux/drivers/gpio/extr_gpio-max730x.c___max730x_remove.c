
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max7301 {int lock; int chip; int (* write ) (struct device*,int,int) ;} ;
struct device {int dummy; } ;


 int ENODEV ;
 struct max7301* dev_get_drvdata (struct device*) ;
 int gpiochip_remove (int *) ;
 int mutex_destroy (int *) ;
 int stub1 (struct device*,int,int) ;

int __max730x_remove(struct device *dev)
{
 struct max7301 *ts = dev_get_drvdata(dev);

 if (ts == ((void*)0))
  return -ENODEV;


 ts->write(dev, 0x04, 0x00);
 gpiochip_remove(&ts->chip);
 mutex_destroy(&ts->lock);
 return 0;
}
