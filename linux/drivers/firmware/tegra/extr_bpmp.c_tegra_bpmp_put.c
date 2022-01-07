
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_bpmp {int dev; } ;


 int put_device (int ) ;

void tegra_bpmp_put(struct tegra_bpmp *bpmp)
{
 if (bpmp)
  put_device(bpmp->dev);
}
