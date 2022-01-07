
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct msm_dsi_phy {int * pll; } ;


 int msm_dsi_pll_destroy (int *) ;
 struct msm_dsi_phy* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;

__attribute__((used)) static int dsi_phy_driver_remove(struct platform_device *pdev)
{
 struct msm_dsi_phy *phy = platform_get_drvdata(pdev);

 if (phy && phy->pll) {
  msm_dsi_pll_destroy(phy->pll);
  phy->pll = ((void*)0);
 }

 platform_set_drvdata(pdev, ((void*)0));

 return 0;
}
