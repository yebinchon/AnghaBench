
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sch311x_gpio_priv {TYPE_1__* blocks; } ;
struct platform_device {int dev; } ;
struct TYPE_2__ {int chip; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int dev_info (int *,char*,int) ;
 int gpiochip_remove (int *) ;
 struct sch311x_gpio_priv* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int sch311x_gpio_remove(struct platform_device *pdev)
{
 struct sch311x_gpio_priv *priv = platform_get_drvdata(pdev);
 int i;

 for (i = 0; i < ARRAY_SIZE(priv->blocks); i++) {
  gpiochip_remove(&priv->blocks[i].chip);
  dev_info(&pdev->dev,
    "SMSC SCH311x GPIO block %d unregistered.\n", i);
 }
 return 0;
}
