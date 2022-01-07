
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sifive_edac_priv {int dci; int notifier; } ;
struct platform_device {int dev; } ;


 int edac_device_del_device (int *) ;
 int edac_device_free_ctl_info (int ) ;
 struct sifive_edac_priv* platform_get_drvdata (struct platform_device*) ;
 int unregister_sifive_l2_error_notifier (int *) ;

__attribute__((used)) static int ecc_unregister(struct platform_device *pdev)
{
 struct sifive_edac_priv *p = platform_get_drvdata(pdev);

 unregister_sifive_l2_error_notifier(&p->notifier);
 edac_device_del_device(&pdev->dev);
 edac_device_free_ctl_info(p->dci);

 return 0;
}
