
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct riic_dev {int adapter; scalar_t__ base; } ;
struct platform_device {int dev; } ;


 scalar_t__ RIIC_ICIER ;
 int i2c_del_adapter (int *) ;
 struct riic_dev* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put (int *) ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static int riic_i2c_remove(struct platform_device *pdev)
{
 struct riic_dev *riic = platform_get_drvdata(pdev);

 pm_runtime_get_sync(&pdev->dev);
 writeb(0, riic->base + RIIC_ICIER);
 pm_runtime_put(&pdev->dev);
 i2c_del_adapter(&riic->adapter);
 pm_runtime_disable(&pdev->dev);

 return 0;
}
