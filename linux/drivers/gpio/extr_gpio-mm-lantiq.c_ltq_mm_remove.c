
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct ltq_mm {int mmchip; } ;


 int of_mm_gpiochip_remove (int *) ;
 struct ltq_mm* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int ltq_mm_remove(struct platform_device *pdev)
{
 struct ltq_mm *chip = platform_get_drvdata(pdev);

 of_mm_gpiochip_remove(&chip->mmchip);

 return 0;
}
