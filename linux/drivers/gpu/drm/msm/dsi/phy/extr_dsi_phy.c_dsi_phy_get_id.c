
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {scalar_t__ start; } ;
struct platform_device {int dummy; } ;
struct msm_dsi_phy_cfg {int num_dsi_phy; scalar_t__* io_start; } ;
struct msm_dsi_phy {struct msm_dsi_phy_cfg* cfg; struct platform_device* pdev; } ;


 int EINVAL ;
 int IORESOURCE_MEM ;
 struct resource* platform_get_resource_byname (struct platform_device*,int ,char*) ;

__attribute__((used)) static int dsi_phy_get_id(struct msm_dsi_phy *phy)
{
 struct platform_device *pdev = phy->pdev;
 const struct msm_dsi_phy_cfg *cfg = phy->cfg;
 struct resource *res;
 int i;

 res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "dsi_phy");
 if (!res)
  return -EINVAL;

 for (i = 0; i < cfg->num_dsi_phy; i++) {
  if (cfg->io_start[i] == res->start)
   return i;
 }

 return -EINVAL;
}
