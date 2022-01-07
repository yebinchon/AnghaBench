
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_sor {int output; TYPE_1__* ops; int client; } ;
struct platform_device {int dev; } ;
struct TYPE_2__ {int (* remove ) (struct tegra_sor*) ;} ;


 int dev_err (int *,char*,int) ;
 int host1x_client_unregister (int *) ;
 struct tegra_sor* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int stub1 (struct tegra_sor*) ;
 int tegra_output_remove (int *) ;

__attribute__((used)) static int tegra_sor_remove(struct platform_device *pdev)
{
 struct tegra_sor *sor = platform_get_drvdata(pdev);
 int err;

 pm_runtime_disable(&pdev->dev);

 err = host1x_client_unregister(&sor->client);
 if (err < 0) {
  dev_err(&pdev->dev, "failed to unregister host1x client: %d\n",
   err);
  return err;
 }

 if (sor->ops && sor->ops->remove) {
  err = sor->ops->remove(sor);
  if (err < 0)
   dev_err(&pdev->dev, "failed to remove SOR: %d\n", err);
 }

 tegra_output_remove(&sor->output);

 return 0;
}
