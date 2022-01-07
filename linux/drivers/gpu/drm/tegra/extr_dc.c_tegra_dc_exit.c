
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_dc {int syncpt; int group; int dev; int irq; } ;
struct host1x_client {int dummy; } ;


 int dev_err (int ,char*,int) ;
 int devm_free_irq (int ,int ,struct tegra_dc*) ;
 int host1x_client_iommu_detach (struct host1x_client*,int ) ;
 struct tegra_dc* host1x_client_to_dc (struct host1x_client*) ;
 int host1x_syncpt_free (int ) ;
 int tegra_dc_has_window_groups (struct tegra_dc*) ;
 int tegra_dc_rgb_exit (struct tegra_dc*) ;

__attribute__((used)) static int tegra_dc_exit(struct host1x_client *client)
{
 struct tegra_dc *dc = host1x_client_to_dc(client);
 int err;

 if (!tegra_dc_has_window_groups(dc))
  return 0;

 devm_free_irq(dc->dev, dc->irq, dc);

 err = tegra_dc_rgb_exit(dc);
 if (err) {
  dev_err(dc->dev, "failed to shutdown RGB output: %d\n", err);
  return err;
 }

 host1x_client_iommu_detach(client, dc->group);
 host1x_syncpt_free(dc->syncpt);

 return 0;
}
