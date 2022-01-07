
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ngpio; } ;
struct ucb1400_gpio {int (* gpio_teardown ) (int *,int ) ;TYPE_1__ gc; } ;
struct platform_device {int dev; } ;


 struct ucb1400_gpio* platform_get_drvdata (struct platform_device*) ;
 int stub1 (int *,int ) ;

__attribute__((used)) static int ucb1400_gpio_remove(struct platform_device *dev)
{
 int err = 0;
 struct ucb1400_gpio *ucb = platform_get_drvdata(dev);

 if (ucb && ucb->gpio_teardown) {
  err = ucb->gpio_teardown(&dev->dev, ucb->gc.ngpio);
  if (err)
   return err;
 }

 return err;
}
