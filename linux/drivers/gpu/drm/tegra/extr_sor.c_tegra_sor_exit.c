
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_sor {int clk; int clk_dp; int clk_safe; int dev; scalar_t__ aux; int output; } ;
struct host1x_client {int dummy; } ;


 int SOR_INT_ENABLE ;
 int SOR_INT_MASK ;
 int clk_disable_unprepare (int ) ;
 int dev_err (int ,char*,int) ;
 int drm_dp_aux_detach (scalar_t__) ;
 struct tegra_sor* host1x_client_to_sor (struct host1x_client*) ;
 int tegra_output_exit (int *) ;
 int tegra_sor_writel (struct tegra_sor*,int ,int ) ;

__attribute__((used)) static int tegra_sor_exit(struct host1x_client *client)
{
 struct tegra_sor *sor = host1x_client_to_sor(client);
 int err;

 tegra_sor_writel(sor, 0, SOR_INT_MASK);
 tegra_sor_writel(sor, 0, SOR_INT_ENABLE);

 tegra_output_exit(&sor->output);

 if (sor->aux) {
  err = drm_dp_aux_detach(sor->aux);
  if (err < 0) {
   dev_err(sor->dev, "failed to detach DP: %d\n", err);
   return err;
  }
 }

 clk_disable_unprepare(sor->clk_safe);
 clk_disable_unprepare(sor->clk_dp);
 clk_disable_unprepare(sor->clk);

 return 0;
}
