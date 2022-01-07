
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_dc {int client; } ;
struct platform_device {int dev; } ;


 int dev_err (int *,char*,int) ;
 int host1x_client_unregister (int *) ;
 struct tegra_dc* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int tegra_dc_rgb_remove (struct tegra_dc*) ;

__attribute__((used)) static int tegra_dc_remove(struct platform_device *pdev)
{
 struct tegra_dc *dc = platform_get_drvdata(pdev);
 int err;

 err = host1x_client_unregister(&dc->client);
 if (err < 0) {
  dev_err(&pdev->dev, "failed to unregister host1x client: %d\n",
   err);
  return err;
 }

 err = tegra_dc_rgb_remove(dc);
 if (err < 0) {
  dev_err(&pdev->dev, "failed to remove RGB output: %d\n", err);
  return err;
 }

 pm_runtime_disable(&pdev->dev);

 return 0;
}
