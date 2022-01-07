
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct omap_mbox_device {int dev; } ;


 int omap_mbox_unregister (struct omap_mbox_device*) ;
 struct omap_mbox_device* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int ) ;

__attribute__((used)) static int omap_mbox_remove(struct platform_device *pdev)
{
 struct omap_mbox_device *mdev = platform_get_drvdata(pdev);

 pm_runtime_disable(mdev->dev);
 omap_mbox_unregister(mdev);

 return 0;
}
