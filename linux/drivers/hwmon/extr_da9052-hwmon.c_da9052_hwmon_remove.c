
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct da9052_hwmon {int tsiref; int da9052; scalar_t__ tsi_as_adc; } ;


 int DA9052_IRQ_TSIREADY ;
 int da9052_free_irq (int ,int ,struct da9052_hwmon*) ;
 struct da9052_hwmon* platform_get_drvdata (struct platform_device*) ;
 int regulator_disable (int ) ;

__attribute__((used)) static int da9052_hwmon_remove(struct platform_device *pdev)
{
 struct da9052_hwmon *hwmon = platform_get_drvdata(pdev);

 if (hwmon->tsi_as_adc) {
  da9052_free_irq(hwmon->da9052, DA9052_IRQ_TSIREADY, hwmon);
  regulator_disable(hwmon->tsiref);
 }

 return 0;
}
