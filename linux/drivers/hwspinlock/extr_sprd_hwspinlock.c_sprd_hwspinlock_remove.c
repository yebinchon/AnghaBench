
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sprd_hwspinlock_dev {int clk; int bank; } ;
struct platform_device {int dev; } ;


 int clk_disable_unprepare (int ) ;
 int hwspin_lock_unregister (int *) ;
 struct sprd_hwspinlock_dev* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;

__attribute__((used)) static int sprd_hwspinlock_remove(struct platform_device *pdev)
{
 struct sprd_hwspinlock_dev *sprd_hwlock = platform_get_drvdata(pdev);

 hwspin_lock_unregister(&sprd_hwlock->bank);
 pm_runtime_disable(&pdev->dev);
 clk_disable_unprepare(sprd_hwlock->clk);
 return 0;
}
