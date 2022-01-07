
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct crystalcove_gpio {int dummy; } ;


 int free_irq (int,struct crystalcove_gpio*) ;
 struct crystalcove_gpio* platform_get_drvdata (struct platform_device*) ;
 int platform_get_irq (struct platform_device*,int ) ;

__attribute__((used)) static int crystalcove_gpio_remove(struct platform_device *pdev)
{
 struct crystalcove_gpio *cg = platform_get_drvdata(pdev);
 int irq = platform_get_irq(pdev, 0);

 if (irq >= 0)
  free_irq(irq, cg);
 return 0;
}
