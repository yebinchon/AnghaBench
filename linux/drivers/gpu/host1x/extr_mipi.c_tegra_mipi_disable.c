
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_mipi_device {TYPE_1__* mipi; } ;
struct TYPE_2__ {scalar_t__ usage_count; int lock; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tegra_mipi_power_down (TYPE_1__*) ;

int tegra_mipi_disable(struct tegra_mipi_device *dev)
{
 int err = 0;

 mutex_lock(&dev->mipi->lock);

 if (--dev->mipi->usage_count == 0)
  err = tegra_mipi_power_down(dev->mipi);

 mutex_unlock(&dev->mipi->lock);

 return err;

}
