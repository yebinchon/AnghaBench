
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct msm_dsi_pll {int en_seq_cnt; int * enable_seqs; int set_usecase; int restore_state; int save_state; int disable_seq; int destroy; int get_provider; int max_rate; int min_rate; } ;
struct dsi_pll_14nm {int id; int vco_delay; struct msm_dsi_pll base; int postdiv_lock; void* mmio; void* phy_cmn_mmio; struct platform_device* pdev; } ;


 int DBG (char*,int) ;
 int DRM_DEV_ERROR (int *,char*,...) ;
 int ENODEV ;
 int ENOMEM ;
 struct msm_dsi_pll* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR_OR_NULL (void*) ;
 int VCO_MAX_RATE ;
 int VCO_MIN_RATE ;
 struct dsi_pll_14nm* devm_kzalloc (int *,int,int ) ;
 int dsi_pll_14nm_destroy ;
 int dsi_pll_14nm_disable_seq ;
 int dsi_pll_14nm_enable_seq ;
 int dsi_pll_14nm_get_provider ;
 int dsi_pll_14nm_restore_state ;
 int dsi_pll_14nm_save_state ;
 int dsi_pll_14nm_set_usecase ;
 void* msm_ioremap (struct platform_device*,char*,char*) ;
 struct dsi_pll_14nm** pll_14nm_list ;
 int pll_14nm_register (struct dsi_pll_14nm*) ;
 int spin_lock_init (int *) ;

struct msm_dsi_pll *msm_dsi_pll_14nm_init(struct platform_device *pdev, int id)
{
 struct dsi_pll_14nm *pll_14nm;
 struct msm_dsi_pll *pll;
 int ret;

 if (!pdev)
  return ERR_PTR(-ENODEV);

 pll_14nm = devm_kzalloc(&pdev->dev, sizeof(*pll_14nm), GFP_KERNEL);
 if (!pll_14nm)
  return ERR_PTR(-ENOMEM);

 DBG("PLL%d", id);

 pll_14nm->pdev = pdev;
 pll_14nm->id = id;
 pll_14nm_list[id] = pll_14nm;

 pll_14nm->phy_cmn_mmio = msm_ioremap(pdev, "dsi_phy", "DSI_PHY");
 if (IS_ERR_OR_NULL(pll_14nm->phy_cmn_mmio)) {
  DRM_DEV_ERROR(&pdev->dev, "failed to map CMN PHY base\n");
  return ERR_PTR(-ENOMEM);
 }

 pll_14nm->mmio = msm_ioremap(pdev, "dsi_pll", "DSI_PLL");
 if (IS_ERR_OR_NULL(pll_14nm->mmio)) {
  DRM_DEV_ERROR(&pdev->dev, "failed to map PLL base\n");
  return ERR_PTR(-ENOMEM);
 }

 spin_lock_init(&pll_14nm->postdiv_lock);

 pll = &pll_14nm->base;
 pll->min_rate = VCO_MIN_RATE;
 pll->max_rate = VCO_MAX_RATE;
 pll->get_provider = dsi_pll_14nm_get_provider;
 pll->destroy = dsi_pll_14nm_destroy;
 pll->disable_seq = dsi_pll_14nm_disable_seq;
 pll->save_state = dsi_pll_14nm_save_state;
 pll->restore_state = dsi_pll_14nm_restore_state;
 pll->set_usecase = dsi_pll_14nm_set_usecase;

 pll_14nm->vco_delay = 1;

 pll->en_seq_cnt = 1;
 pll->enable_seqs[0] = dsi_pll_14nm_enable_seq;

 ret = pll_14nm_register(pll_14nm);
 if (ret) {
  DRM_DEV_ERROR(&pdev->dev, "failed to register PLL: %d\n", ret);
  return ERR_PTR(ret);
 }

 return pll;
}
