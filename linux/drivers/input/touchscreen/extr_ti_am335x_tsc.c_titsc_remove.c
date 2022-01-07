
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct titsc {int coordinate_readouts; int input; int mfd_tscadc; int irq; } ;
struct platform_device {int dev; } ;


 int am335x_tsc_se_clr (int ,int) ;
 int dev_pm_clear_wake_irq (int *) ;
 int device_init_wakeup (int *,int) ;
 int free_irq (int ,struct titsc*) ;
 int input_unregister_device (int ) ;
 int kfree (struct titsc*) ;
 struct titsc* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int titsc_remove(struct platform_device *pdev)
{
 struct titsc *ts_dev = platform_get_drvdata(pdev);
 u32 steps;

 dev_pm_clear_wake_irq(&pdev->dev);
 device_init_wakeup(&pdev->dev, 0);
 free_irq(ts_dev->irq, ts_dev);


 steps = 2 * ts_dev->coordinate_readouts + 2;
 steps = (1 << steps) - 1;
 am335x_tsc_se_clr(ts_dev->mfd_tscadc, steps);

 input_unregister_device(ts_dev->input);

 kfree(ts_dev);
 return 0;
}
