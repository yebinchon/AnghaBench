
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_hdmi {int output; int client; } ;
struct platform_device {int dev; } ;


 int dev_err (int *,char*,int) ;
 int host1x_client_unregister (int *) ;
 struct tegra_hdmi* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int tegra_output_remove (int *) ;

__attribute__((used)) static int tegra_hdmi_remove(struct platform_device *pdev)
{
 struct tegra_hdmi *hdmi = platform_get_drvdata(pdev);
 int err;

 pm_runtime_disable(&pdev->dev);

 err = host1x_client_unregister(&hdmi->client);
 if (err < 0) {
  dev_err(&pdev->dev, "failed to unregister host1x client: %d\n",
   err);
  return err;
 }

 tegra_output_remove(&hdmi->output);

 return 0;
}
