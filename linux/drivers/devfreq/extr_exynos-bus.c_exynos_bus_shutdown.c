
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct exynos_bus {int devfreq; } ;


 struct exynos_bus* dev_get_drvdata (int *) ;
 int devfreq_suspend_device (int ) ;

__attribute__((used)) static void exynos_bus_shutdown(struct platform_device *pdev)
{
 struct exynos_bus *bus = dev_get_drvdata(&pdev->dev);

 devfreq_suspend_device(bus->devfreq);
}
