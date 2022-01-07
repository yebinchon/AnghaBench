
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_mipi_device {int pdev; } ;


 int kfree (struct tegra_mipi_device*) ;
 int platform_device_put (int ) ;

void tegra_mipi_free(struct tegra_mipi_device *device)
{
 platform_device_put(device->pdev);
 kfree(device);
}
