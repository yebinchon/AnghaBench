
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct msm_dsi_pll {unsigned long min_rate; unsigned long max_rate; int set_usecase; int restore_state; int save_state; int destroy; int get_provider; } ;
struct dsi_pll_10nm {int id; int vco_delay; struct msm_dsi_pll base; int postdiv_lock; void* mmio; void* phy_cmn_mmio; struct platform_device* pdev; } ;


 int DBG (char*,int) ;
 int DRM_DEV_ERROR (int *,char*,...) ;
 int ENOMEM ;
 struct msm_dsi_pll* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR_OR_NULL (void*) ;
 struct dsi_pll_10nm* devm_kzalloc (int *,int,int ) ;
 int dsi_pll_10nm_destroy ;
 int dsi_pll_10nm_get_provider ;
 int dsi_pll_10nm_restore_state ;
 int dsi_pll_10nm_save_state ;
 int dsi_pll_10nm_set_usecase ;
 int msm_dsi_pll_save_state (struct msm_dsi_pll*) ;
 void* msm_ioremap (struct platform_device*,char*,char*) ;
 struct dsi_pll_10nm** pll_10nm_list ;
 int pll_10nm_register (struct dsi_pll_10nm*) ;
 int spin_lock_init (int *) ;

struct msm_dsi_pll *msm_dsi_pll_10nm_init(struct platform_device *pdev, int id)
{
 struct dsi_pll_10nm *pll_10nm;
 struct msm_dsi_pll *pll;
 int ret;

 pll_10nm = devm_kzalloc(&pdev->dev, sizeof(*pll_10nm), GFP_KERNEL);
 if (!pll_10nm)
  return ERR_PTR(-ENOMEM);

 DBG("DSI PLL%d", id);

 pll_10nm->pdev = pdev;
 pll_10nm->id = id;
 pll_10nm_list[id] = pll_10nm;

 pll_10nm->phy_cmn_mmio = msm_ioremap(pdev, "dsi_phy", "DSI_PHY");
 if (IS_ERR_OR_NULL(pll_10nm->phy_cmn_mmio)) {
  DRM_DEV_ERROR(&pdev->dev, "failed to map CMN PHY base\n");
  return ERR_PTR(-ENOMEM);
 }

 pll_10nm->mmio = msm_ioremap(pdev, "dsi_pll", "DSI_PLL");
 if (IS_ERR_OR_NULL(pll_10nm->mmio)) {
  DRM_DEV_ERROR(&pdev->dev, "failed to map PLL base\n");
  return ERR_PTR(-ENOMEM);
 }

 spin_lock_init(&pll_10nm->postdiv_lock);

 pll = &pll_10nm->base;
 pll->min_rate = 1000000000UL;
 pll->max_rate = 3500000000UL;
 pll->get_provider = dsi_pll_10nm_get_provider;
 pll->destroy = dsi_pll_10nm_destroy;
 pll->save_state = dsi_pll_10nm_save_state;
 pll->restore_state = dsi_pll_10nm_restore_state;
 pll->set_usecase = dsi_pll_10nm_set_usecase;

 pll_10nm->vco_delay = 1;

 ret = pll_10nm_register(pll_10nm);
 if (ret) {
  DRM_DEV_ERROR(&pdev->dev, "failed to register PLL: %d\n", ret);
  return ERR_PTR(ret);
 }


 msm_dsi_pll_save_state(pll);

 return pll;
}
