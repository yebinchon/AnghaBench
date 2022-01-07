
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct mpc52xx_gpiochip {int mmchip; } ;


 int of_mm_gpiochip_remove (int *) ;
 struct mpc52xx_gpiochip* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int mpc52xx_gpiochip_remove(struct platform_device *ofdev)
{
 struct mpc52xx_gpiochip *chip = platform_get_drvdata(ofdev);

 of_mm_gpiochip_remove(&chip->mmchip);

 return 0;
}
