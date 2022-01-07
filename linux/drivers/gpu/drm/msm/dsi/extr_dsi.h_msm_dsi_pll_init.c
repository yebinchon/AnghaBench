
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct msm_dsi_pll {int dummy; } ;
typedef enum msm_dsi_phy_type { ____Placeholder_msm_dsi_phy_type } msm_dsi_phy_type ;


 int ENODEV ;
 struct msm_dsi_pll* ERR_PTR (int ) ;

__attribute__((used)) static inline struct msm_dsi_pll *msm_dsi_pll_init(struct platform_device *pdev,
    enum msm_dsi_phy_type type, int id) {
 return ERR_PTR(-ENODEV);
}
