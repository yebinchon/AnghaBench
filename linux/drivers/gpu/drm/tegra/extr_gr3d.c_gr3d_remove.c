
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct TYPE_2__ {int base; } ;
struct gr3d {scalar_t__ clk; scalar_t__ clk_secondary; TYPE_1__ client; } ;


 int TEGRA_POWERGATE_3D ;
 int TEGRA_POWERGATE_3D1 ;
 int clk_disable_unprepare (scalar_t__) ;
 int dev_err (int *,char*,int) ;
 int host1x_client_unregister (int *) ;
 struct gr3d* platform_get_drvdata (struct platform_device*) ;
 int tegra_powergate_power_off (int ) ;

__attribute__((used)) static int gr3d_remove(struct platform_device *pdev)
{
 struct gr3d *gr3d = platform_get_drvdata(pdev);
 int err;

 err = host1x_client_unregister(&gr3d->client.base);
 if (err < 0) {
  dev_err(&pdev->dev, "failed to unregister host1x client: %d\n",
   err);
  return err;
 }

 if (gr3d->clk_secondary) {
  tegra_powergate_power_off(TEGRA_POWERGATE_3D1);
  clk_disable_unprepare(gr3d->clk_secondary);
 }

 tegra_powergate_power_off(TEGRA_POWERGATE_3D);
 clk_disable_unprepare(gr3d->clk);

 return 0;
}
