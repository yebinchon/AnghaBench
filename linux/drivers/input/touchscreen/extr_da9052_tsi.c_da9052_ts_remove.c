
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct da9052_tsi {int dev; int da9052; } ;


 int DA9052_IRQ_PENDOWN ;
 int DA9052_IRQ_TSIREADY ;
 int DA9052_LDO9_REG ;
 int da9052_free_irq (int ,int ,struct da9052_tsi*) ;
 int da9052_reg_write (int ,int ,int) ;
 int input_unregister_device (int ) ;
 int kfree (struct da9052_tsi*) ;
 struct da9052_tsi* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int da9052_ts_remove(struct platform_device *pdev)
{
 struct da9052_tsi *tsi = platform_get_drvdata(pdev);

 da9052_reg_write(tsi->da9052, DA9052_LDO9_REG, 0x19);

 da9052_free_irq(tsi->da9052, DA9052_IRQ_TSIREADY, tsi);
 da9052_free_irq(tsi->da9052, DA9052_IRQ_PENDOWN, tsi);

 input_unregister_device(tsi->dev);
 kfree(tsi);

 return 0;
}
