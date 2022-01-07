
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_dsi {struct tegra_dsi* slave; int dev; int mipi; } ;


 int dev_err (int ,char*,int) ;
 int pm_runtime_get_sync (int ) ;
 int tegra_dsi_pad_calibrate (struct tegra_dsi*) ;
 int tegra_mipi_enable (int ) ;

__attribute__((used)) static void tegra_dsi_prepare(struct tegra_dsi *dsi)
{
 int err;

 pm_runtime_get_sync(dsi->dev);

 err = tegra_mipi_enable(dsi->mipi);
 if (err < 0)
  dev_err(dsi->dev, "failed to enable MIPI calibration: %d\n",
   err);

 err = tegra_dsi_pad_calibrate(dsi);
 if (err < 0)
  dev_err(dsi->dev, "MIPI calibration failed: %d\n", err);

 if (dsi->slave)
  tegra_dsi_prepare(dsi->slave);
}
