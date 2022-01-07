
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_display_hub {int client; } ;
struct platform_device {int dev; } ;


 int dev_err (int *,char*,int) ;
 int host1x_client_unregister (int *) ;
 struct tegra_display_hub* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;

__attribute__((used)) static int tegra_display_hub_remove(struct platform_device *pdev)
{
 struct tegra_display_hub *hub = platform_get_drvdata(pdev);
 int err;

 err = host1x_client_unregister(&hub->client);
 if (err < 0) {
  dev_err(&pdev->dev, "failed to unregister host1x client: %d\n",
   err);
 }

 pm_runtime_disable(&pdev->dev);

 return err;
}
