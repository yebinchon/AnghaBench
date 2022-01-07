
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int base; } ;
struct vic {int falcon; TYPE_1__ client; } ;
struct platform_device {int dev; } ;


 int dev_err (int *,char*,int) ;
 int falcon_exit (int *) ;
 int host1x_client_unregister (int *) ;
 struct vic* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 scalar_t__ pm_runtime_enabled (int *) ;
 int vic_runtime_suspend (int *) ;

__attribute__((used)) static int vic_remove(struct platform_device *pdev)
{
 struct vic *vic = platform_get_drvdata(pdev);
 int err;

 err = host1x_client_unregister(&vic->client.base);
 if (err < 0) {
  dev_err(&pdev->dev, "failed to unregister host1x client: %d\n",
   err);
  return err;
 }

 if (pm_runtime_enabled(&pdev->dev))
  pm_runtime_disable(&pdev->dev);
 else
  vic_runtime_suspend(&pdev->dev);

 falcon_exit(&vic->falcon);

 return 0;
}
