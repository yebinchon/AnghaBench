
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct msm_kms {int irq; struct msm_gem_address_space* aspace; } ;
struct msm_gem_address_space {TYPE_3__* mmu; } ;
struct mdp4_platform_config {scalar_t__ iommu; int max_clk; } ;
struct TYPE_8__ {struct msm_kms base; } ;
struct mdp4_kms {int rev; int rpm_enabled; int blank_cursor_iova; struct msm_gem_address_space* blank_cursor_bo; struct msm_gem_address_space* lut_clk; struct msm_gem_address_space* clk; struct msm_gem_address_space* axi_clk; struct msm_gem_address_space* pclk; struct msm_gem_address_space* vdd; struct msm_gem_address_space* mmio; struct drm_device* dev; TYPE_4__ base; } ;
struct TYPE_6__ {int max_width; int max_height; scalar_t__ min_height; scalar_t__ min_width; } ;
struct drm_device {TYPE_2__ mode_config; int dev; } ;
struct TYPE_7__ {TYPE_1__* funcs; } ;
struct TYPE_5__ {int (* attach ) (TYPE_3__*,int ,int ) ;} ;


 int ARRAY_SIZE (int ) ;
 int DRM_DEV_ERROR (int ,char*,...) ;
 int DRM_DEV_INFO (int ,char*) ;
 int ENOMEM ;
 struct msm_kms* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct msm_gem_address_space*) ;
 int MSM_BO_SCANOUT ;
 int MSM_BO_WC ;
 int PTR_ERR (struct msm_gem_address_space*) ;
 int REG_MDP4_DSI_ENABLE ;
 int REG_MDP4_DTV_ENABLE ;
 int REG_MDP4_LCDC_ENABLE ;
 int SZ_16K ;
 int clk_set_rate (struct msm_gem_address_space*,int ) ;
 void* devm_clk_get (int *,char*) ;
 struct msm_gem_address_space* devm_regulator_get_exclusive (int *,char*) ;
 int iommu_ports ;
 int kms_funcs ;
 struct mdp4_kms* kzalloc (int,int ) ;
 int mdelay (int) ;
 int mdp4_destroy (struct msm_kms*) ;
 int mdp4_disable (struct mdp4_kms*) ;
 int mdp4_enable (struct mdp4_kms*) ;
 struct mdp4_platform_config* mdp4_get_config (struct platform_device*) ;
 int mdp4_write (struct mdp4_kms*,int ,int ) ;
 int mdp_kms_init (TYPE_4__*,int *) ;
 int modeset_init (struct mdp4_kms*) ;
 struct msm_gem_address_space* msm_gem_address_space_create (int *,scalar_t__,char*) ;
 int msm_gem_get_and_pin_iova (struct msm_gem_address_space*,struct msm_gem_address_space*,int *) ;
 struct msm_gem_address_space* msm_gem_new (struct drm_device*,int ,int) ;
 struct msm_gem_address_space* msm_ioremap (struct platform_device*,int *,char*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int pm_runtime_enable (int ) ;
 int regulator_enable (struct msm_gem_address_space*) ;
 int stub1 (TYPE_3__*,int ,int ) ;
 struct platform_device* to_platform_device (int ) ;

struct msm_kms *mdp4_kms_init(struct drm_device *dev)
{
 struct platform_device *pdev = to_platform_device(dev->dev);
 struct mdp4_platform_config *config = mdp4_get_config(pdev);
 struct mdp4_kms *mdp4_kms;
 struct msm_kms *kms = ((void*)0);
 struct msm_gem_address_space *aspace;
 int irq, ret;

 mdp4_kms = kzalloc(sizeof(*mdp4_kms), GFP_KERNEL);
 if (!mdp4_kms) {
  DRM_DEV_ERROR(dev->dev, "failed to allocate kms\n");
  ret = -ENOMEM;
  goto fail;
 }

 mdp_kms_init(&mdp4_kms->base, &kms_funcs);

 kms = &mdp4_kms->base.base;

 mdp4_kms->dev = dev;

 mdp4_kms->mmio = msm_ioremap(pdev, ((void*)0), "MDP4");
 if (IS_ERR(mdp4_kms->mmio)) {
  ret = PTR_ERR(mdp4_kms->mmio);
  goto fail;
 }

 irq = platform_get_irq(pdev, 0);
 if (irq < 0) {
  ret = irq;
  DRM_DEV_ERROR(dev->dev, "failed to get irq: %d\n", ret);
  goto fail;
 }

 kms->irq = irq;





 mdp4_kms->vdd = devm_regulator_get_exclusive(&pdev->dev, "vdd");
 if (IS_ERR(mdp4_kms->vdd))
  mdp4_kms->vdd = ((void*)0);

 if (mdp4_kms->vdd) {
  ret = regulator_enable(mdp4_kms->vdd);
  if (ret) {
   DRM_DEV_ERROR(dev->dev, "failed to enable regulator vdd: %d\n", ret);
   goto fail;
  }
 }

 mdp4_kms->clk = devm_clk_get(&pdev->dev, "core_clk");
 if (IS_ERR(mdp4_kms->clk)) {
  DRM_DEV_ERROR(dev->dev, "failed to get core_clk\n");
  ret = PTR_ERR(mdp4_kms->clk);
  goto fail;
 }

 mdp4_kms->pclk = devm_clk_get(&pdev->dev, "iface_clk");
 if (IS_ERR(mdp4_kms->pclk))
  mdp4_kms->pclk = ((void*)0);

 if (mdp4_kms->rev >= 2) {
  mdp4_kms->lut_clk = devm_clk_get(&pdev->dev, "lut_clk");
  if (IS_ERR(mdp4_kms->lut_clk)) {
   DRM_DEV_ERROR(dev->dev, "failed to get lut_clk\n");
   ret = PTR_ERR(mdp4_kms->lut_clk);
   goto fail;
  }
 }

 mdp4_kms->axi_clk = devm_clk_get(&pdev->dev, "bus_clk");
 if (IS_ERR(mdp4_kms->axi_clk)) {
  DRM_DEV_ERROR(dev->dev, "failed to get axi_clk\n");
  ret = PTR_ERR(mdp4_kms->axi_clk);
  goto fail;
 }

 clk_set_rate(mdp4_kms->clk, config->max_clk);
 if (mdp4_kms->lut_clk)
  clk_set_rate(mdp4_kms->lut_clk, config->max_clk);

 pm_runtime_enable(dev->dev);
 mdp4_kms->rpm_enabled = 1;





 mdp4_enable(mdp4_kms);
 mdp4_write(mdp4_kms, REG_MDP4_DTV_ENABLE, 0);
 mdp4_write(mdp4_kms, REG_MDP4_LCDC_ENABLE, 0);
 mdp4_write(mdp4_kms, REG_MDP4_DSI_ENABLE, 0);
 mdp4_disable(mdp4_kms);
 mdelay(16);

 if (config->iommu) {
  aspace = msm_gem_address_space_create(&pdev->dev,
    config->iommu, "mdp4");
  if (IS_ERR(aspace)) {
   ret = PTR_ERR(aspace);
   goto fail;
  }

  kms->aspace = aspace;

  ret = aspace->mmu->funcs->attach(aspace->mmu, iommu_ports,
    ARRAY_SIZE(iommu_ports));
  if (ret)
   goto fail;
 } else {
  DRM_DEV_INFO(dev->dev, "no iommu, fallback to phys "
    "contig buffers for scanout\n");
  aspace = ((void*)0);
 }

 ret = modeset_init(mdp4_kms);
 if (ret) {
  DRM_DEV_ERROR(dev->dev, "modeset_init failed: %d\n", ret);
  goto fail;
 }

 mdp4_kms->blank_cursor_bo = msm_gem_new(dev, SZ_16K, MSM_BO_WC | MSM_BO_SCANOUT);
 if (IS_ERR(mdp4_kms->blank_cursor_bo)) {
  ret = PTR_ERR(mdp4_kms->blank_cursor_bo);
  DRM_DEV_ERROR(dev->dev, "could not allocate blank-cursor bo: %d\n", ret);
  mdp4_kms->blank_cursor_bo = ((void*)0);
  goto fail;
 }

 ret = msm_gem_get_and_pin_iova(mdp4_kms->blank_cursor_bo, kms->aspace,
   &mdp4_kms->blank_cursor_iova);
 if (ret) {
  DRM_DEV_ERROR(dev->dev, "could not pin blank-cursor bo: %d\n", ret);
  goto fail;
 }

 dev->mode_config.min_width = 0;
 dev->mode_config.min_height = 0;
 dev->mode_config.max_width = 2048;
 dev->mode_config.max_height = 2048;

 return kms;

fail:
 if (kms)
  mdp4_destroy(kms);
 return ERR_PTR(ret);
}
