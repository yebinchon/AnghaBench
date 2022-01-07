
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct mem_ctl_info {int dummy; } ;


 int ASPEED_MCR_INTR_CTRL ;
 int ASPEED_MCR_INTR_CTRL_ENABLE ;
 int aspeed_regmap ;
 struct mem_ctl_info* edac_mc_del_mc (int *) ;
 int edac_mc_free (struct mem_ctl_info*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int aspeed_remove(struct platform_device *pdev)
{
 struct mem_ctl_info *mci;


 regmap_update_bits(aspeed_regmap, ASPEED_MCR_INTR_CTRL,
      ASPEED_MCR_INTR_CTRL_ENABLE, 0);


 mci = edac_mc_del_mc(&pdev->dev);
 if (mci)
  edac_mc_free(mci);

 return 0;
}
