
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_device {struct v3d_dev* dev_private; } ;
struct v3d_dev {int va_width; int ver; int cores; int mmu_scratch_paddr; int mmu_scratch; struct drm_device drm; int gca_regs; int bridge_regs; int * reset; int * core_regs; int hub_regs; struct platform_device* pdev; struct device* dev; } ;
struct device {int coherent_dma_mask; } ;
struct platform_device {struct device dev; } ;


 int DMA_BIT_MASK (int) ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int V3D_GET_FIELD (int ,int ) ;
 int V3D_HUB_IDENT1 ;
 int V3D_HUB_IDENT1_NCORES ;
 int V3D_HUB_IDENT1_REV ;
 int V3D_HUB_IDENT1_TVER ;
 int V3D_MMU_DEBUG_INFO ;
 int V3D_MMU_PA_WIDTH ;
 int V3D_MMU_VA_WIDTH ;
 int V3D_READ (int ) ;
 int WARN_ON (int) ;
 int __GFP_NOWARN ;
 int __GFP_ZERO ;
 int dev_err (struct device*,char*) ;
 int * devm_reset_control_get_exclusive (struct device*,int *) ;
 int dma_alloc_wc (struct device*,int,int *,int) ;
 int dma_free_wc (struct device*,int,int ,int ) ;
 int drm_dev_init (struct drm_device*,int *,struct device*) ;
 int drm_dev_put (struct drm_device*) ;
 int drm_dev_register (struct drm_device*,int ) ;
 int kfree (struct v3d_dev*) ;
 struct v3d_dev* kzalloc (int,int) ;
 int map_regs (struct v3d_dev*,int *,char*) ;
 int platform_set_drvdata (struct platform_device*,struct drm_device*) ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_set_autosuspend_delay (struct device*,int) ;
 int pm_runtime_use_autosuspend (struct device*) ;
 int v3d_drm_driver ;
 int v3d_gem_destroy (struct drm_device*) ;
 int v3d_gem_init (struct drm_device*) ;
 int v3d_irq_disable (struct v3d_dev*) ;
 int v3d_irq_init (struct v3d_dev*) ;

__attribute__((used)) static int v3d_platform_drm_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct drm_device *drm;
 struct v3d_dev *v3d;
 int ret;
 u32 mmu_debug;
 u32 ident1;


 v3d = kzalloc(sizeof(*v3d), GFP_KERNEL);
 if (!v3d)
  return -ENOMEM;
 v3d->dev = dev;
 v3d->pdev = pdev;
 drm = &v3d->drm;

 ret = map_regs(v3d, &v3d->hub_regs, "hub");
 if (ret)
  goto dev_free;

 ret = map_regs(v3d, &v3d->core_regs[0], "core0");
 if (ret)
  goto dev_free;

 mmu_debug = V3D_READ(V3D_MMU_DEBUG_INFO);
 dev->coherent_dma_mask =
  DMA_BIT_MASK(30 + V3D_GET_FIELD(mmu_debug, V3D_MMU_PA_WIDTH));
 v3d->va_width = 30 + V3D_GET_FIELD(mmu_debug, V3D_MMU_VA_WIDTH);

 ident1 = V3D_READ(V3D_HUB_IDENT1);
 v3d->ver = (V3D_GET_FIELD(ident1, V3D_HUB_IDENT1_TVER) * 10 +
      V3D_GET_FIELD(ident1, V3D_HUB_IDENT1_REV));
 v3d->cores = V3D_GET_FIELD(ident1, V3D_HUB_IDENT1_NCORES);
 WARN_ON(v3d->cores > 1);

 v3d->reset = devm_reset_control_get_exclusive(dev, ((void*)0));
 if (IS_ERR(v3d->reset)) {
  ret = PTR_ERR(v3d->reset);

  if (ret == -EPROBE_DEFER)
   goto dev_free;

  v3d->reset = ((void*)0);
  ret = map_regs(v3d, &v3d->bridge_regs, "bridge");
  if (ret) {
   dev_err(dev,
    "Failed to get reset control or bridge regs\n");
   goto dev_free;
  }
 }

 if (v3d->ver < 41) {
  ret = map_regs(v3d, &v3d->gca_regs, "gca");
  if (ret)
   goto dev_free;
 }

 v3d->mmu_scratch = dma_alloc_wc(dev, 4096, &v3d->mmu_scratch_paddr,
     GFP_KERNEL | __GFP_NOWARN | __GFP_ZERO);
 if (!v3d->mmu_scratch) {
  dev_err(dev, "Failed to allocate MMU scratch page\n");
  ret = -ENOMEM;
  goto dev_free;
 }

 pm_runtime_use_autosuspend(dev);
 pm_runtime_set_autosuspend_delay(dev, 50);
 pm_runtime_enable(dev);

 ret = drm_dev_init(&v3d->drm, &v3d_drm_driver, dev);
 if (ret)
  goto dma_free;

 platform_set_drvdata(pdev, drm);
 drm->dev_private = v3d;

 ret = v3d_gem_init(drm);
 if (ret)
  goto dev_destroy;

 ret = v3d_irq_init(v3d);
 if (ret)
  goto gem_destroy;

 ret = drm_dev_register(drm, 0);
 if (ret)
  goto irq_disable;

 return 0;

irq_disable:
 v3d_irq_disable(v3d);
gem_destroy:
 v3d_gem_destroy(drm);
dev_destroy:
 drm_dev_put(drm);
dma_free:
 dma_free_wc(dev, 4096, v3d->mmu_scratch, v3d->mmu_scratch_paddr);
dev_free:
 kfree(v3d);
 return ret;
}
