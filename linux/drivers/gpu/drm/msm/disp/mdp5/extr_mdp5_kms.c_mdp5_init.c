
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct platform_device {int dev; } ;
struct msm_drm_private {int * kms; } ;
struct TYPE_6__ {int base; } ;
struct mdp5_kms {int rpm_enabled; int caps; TYPE_3__ base; int * ctlm; int * cfg; int * mmio; int * smp; int core_clk; int lut_clk; int vsync_clk; int ahb_clk; int axi_clk; struct platform_device* pdev; struct drm_device* dev; int resource_lock; } ;
struct mdp5_cfg {TYPE_2__* hw; } ;
struct drm_device {struct msm_drm_private* dev_private; } ;
struct TYPE_4__ {int caps; } ;
struct TYPE_5__ {int max_clk; int smp; TYPE_1__ mdp; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int *) ;
 int MDP_CAP_SMP ;
 int PTR_ERR (int *) ;
 int clk_set_rate (int ,int) ;
 struct mdp5_kms* devm_kzalloc (int *,int,int ) ;
 int get_clk (struct platform_device*,int *,char*,int) ;
 int hwmixer_init (struct mdp5_kms*) ;
 int hwpipe_init (struct mdp5_kms*) ;
 int interface_init (struct mdp5_kms*) ;
 struct mdp5_cfg* mdp5_cfg_get_config (int *) ;
 int * mdp5_cfg_init (struct mdp5_kms*,int ,int ) ;
 int * mdp5_ctlm_init (struct drm_device*,int *,int *) ;
 int mdp5_destroy (struct platform_device*) ;
 int mdp5_global_obj_init (struct mdp5_kms*) ;
 int * mdp5_smp_init (struct mdp5_kms*,int *) ;
 int * msm_ioremap (struct platform_device*,char*,char*) ;
 int platform_set_drvdata (struct platform_device*,struct mdp5_kms*) ;
 int pm_runtime_enable (int *) ;
 int read_mdp_hw_revision (struct mdp5_kms*,int *,int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int mdp5_init(struct platform_device *pdev, struct drm_device *dev)
{
 struct msm_drm_private *priv = dev->dev_private;
 struct mdp5_kms *mdp5_kms;
 struct mdp5_cfg *config;
 u32 major, minor;
 int ret;

 mdp5_kms = devm_kzalloc(&pdev->dev, sizeof(*mdp5_kms), GFP_KERNEL);
 if (!mdp5_kms) {
  ret = -ENOMEM;
  goto fail;
 }

 platform_set_drvdata(pdev, mdp5_kms);

 spin_lock_init(&mdp5_kms->resource_lock);

 mdp5_kms->dev = dev;
 mdp5_kms->pdev = pdev;

 ret = mdp5_global_obj_init(mdp5_kms);
 if (ret)
  goto fail;

 mdp5_kms->mmio = msm_ioremap(pdev, "mdp_phys", "MDP5");
 if (IS_ERR(mdp5_kms->mmio)) {
  ret = PTR_ERR(mdp5_kms->mmio);
  goto fail;
 }


 ret = get_clk(pdev, &mdp5_kms->axi_clk, "bus", 1);
 if (ret)
  goto fail;
 ret = get_clk(pdev, &mdp5_kms->ahb_clk, "iface", 1);
 if (ret)
  goto fail;
 ret = get_clk(pdev, &mdp5_kms->core_clk, "core", 1);
 if (ret)
  goto fail;
 ret = get_clk(pdev, &mdp5_kms->vsync_clk, "vsync", 1);
 if (ret)
  goto fail;


 get_clk(pdev, &mdp5_kms->lut_clk, "lut", 0);





 clk_set_rate(mdp5_kms->core_clk, 200000000);

 pm_runtime_enable(&pdev->dev);
 mdp5_kms->rpm_enabled = 1;

 read_mdp_hw_revision(mdp5_kms, &major, &minor);

 mdp5_kms->cfg = mdp5_cfg_init(mdp5_kms, major, minor);
 if (IS_ERR(mdp5_kms->cfg)) {
  ret = PTR_ERR(mdp5_kms->cfg);
  mdp5_kms->cfg = ((void*)0);
  goto fail;
 }

 config = mdp5_cfg_get_config(mdp5_kms->cfg);
 mdp5_kms->caps = config->hw->mdp.caps;


 clk_set_rate(mdp5_kms->core_clk, config->hw->max_clk);






 if (mdp5_kms->caps & MDP_CAP_SMP) {
  mdp5_kms->smp = mdp5_smp_init(mdp5_kms, &config->hw->smp);
  if (IS_ERR(mdp5_kms->smp)) {
   ret = PTR_ERR(mdp5_kms->smp);
   mdp5_kms->smp = ((void*)0);
   goto fail;
  }
 }

 mdp5_kms->ctlm = mdp5_ctlm_init(dev, mdp5_kms->mmio, mdp5_kms->cfg);
 if (IS_ERR(mdp5_kms->ctlm)) {
  ret = PTR_ERR(mdp5_kms->ctlm);
  mdp5_kms->ctlm = ((void*)0);
  goto fail;
 }

 ret = hwpipe_init(mdp5_kms);
 if (ret)
  goto fail;

 ret = hwmixer_init(mdp5_kms);
 if (ret)
  goto fail;

 ret = interface_init(mdp5_kms);
 if (ret)
  goto fail;


 priv->kms = &mdp5_kms->base.base;

 return 0;
fail:
 mdp5_destroy(pdev);
 return ret;
}
