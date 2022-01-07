
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_dsi {int dev; int mipi; struct tegra_dsi* slave; } ;


 int dev_err (int ,char*,int) ;
 int pm_runtime_put (int ) ;
 int tegra_mipi_disable (int ) ;

__attribute__((used)) static void tegra_dsi_unprepare(struct tegra_dsi *dsi)
{
 int err;

 if (dsi->slave)
  tegra_dsi_unprepare(dsi->slave);

 err = tegra_mipi_disable(dsi->mipi);
 if (err < 0)
  dev_err(dsi->dev, "failed to disable MIPI calibration: %d\n",
   err);

 pm_runtime_put(dsi->dev);
}
