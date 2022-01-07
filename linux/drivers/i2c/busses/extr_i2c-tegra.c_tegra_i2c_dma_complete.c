
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_i2c_dev {int dma_complete; } ;


 int complete (int *) ;

__attribute__((used)) static void tegra_i2c_dma_complete(void *args)
{
 struct tegra_i2c_dev *i2c_dev = args;

 complete(&i2c_dev->dma_complete);
}
