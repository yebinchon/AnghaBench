
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nregs; int regs; int * base; } ;
struct vc4_v3d {TYPE_1__ regset; int * clk; struct vc4_dev* vc4; int * regs; struct platform_device* pdev; } ;
struct vc4_dev {struct vc4_v3d* v3d; } ;
struct platform_device {int dev; } ;
struct drm_device {int dummy; } ;
struct device {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int DRM_ERROR (char*,...) ;
 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int V3D_BPOA ;
 int V3D_BPOS ;
 scalar_t__ V3D_EXPECTED_IDENT0 ;
 int V3D_IDENT0 ;
 scalar_t__ V3D_READ (int ) ;
 int V3D_WRITE (int ,int ) ;
 int clk_prepare_enable (int *) ;
 int dev_err (struct device*,char*,int) ;
 struct drm_device* dev_get_drvdata (struct device*) ;
 int dev_set_drvdata (struct device*,struct vc4_v3d*) ;
 int * devm_clk_get (struct device*,int *) ;
 struct vc4_v3d* devm_kzalloc (int *,int,int ) ;
 int drm_irq_install (struct drm_device*,int ) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_set_active (struct device*) ;
 int pm_runtime_set_autosuspend_delay (struct device*,int) ;
 int pm_runtime_use_autosuspend (struct device*) ;
 struct platform_device* to_platform_device (struct device*) ;
 struct vc4_dev* to_vc4_dev (struct drm_device*) ;
 int v3d_regs ;
 int vc4_debugfs_add_file (struct drm_device*,char*,int ,int *) ;
 int vc4_debugfs_add_regset32 (struct drm_device*,char*,TYPE_1__*) ;
 int * vc4_ioremap_regs (struct platform_device*,int ) ;
 int vc4_v3d_debugfs_ident ;
 int vc4_v3d_init_hw (struct drm_device*) ;

__attribute__((used)) static int vc4_v3d_bind(struct device *dev, struct device *master, void *data)
{
 struct platform_device *pdev = to_platform_device(dev);
 struct drm_device *drm = dev_get_drvdata(master);
 struct vc4_dev *vc4 = to_vc4_dev(drm);
 struct vc4_v3d *v3d = ((void*)0);
 int ret;

 v3d = devm_kzalloc(&pdev->dev, sizeof(*v3d), GFP_KERNEL);
 if (!v3d)
  return -ENOMEM;

 dev_set_drvdata(dev, v3d);

 v3d->pdev = pdev;

 v3d->regs = vc4_ioremap_regs(pdev, 0);
 if (IS_ERR(v3d->regs))
  return PTR_ERR(v3d->regs);
 v3d->regset.base = v3d->regs;
 v3d->regset.regs = v3d_regs;
 v3d->regset.nregs = ARRAY_SIZE(v3d_regs);

 vc4->v3d = v3d;
 v3d->vc4 = vc4;

 v3d->clk = devm_clk_get(dev, ((void*)0));
 if (IS_ERR(v3d->clk)) {
  int ret = PTR_ERR(v3d->clk);

  if (ret == -ENOENT) {

   ret = 0;
   v3d->clk = ((void*)0);
  } else {
   if (ret != -EPROBE_DEFER)
    dev_err(dev, "Failed to get V3D clock: %d\n",
     ret);
   return ret;
  }
 }

 if (V3D_READ(V3D_IDENT0) != V3D_EXPECTED_IDENT0) {
  DRM_ERROR("V3D_IDENT0 read 0x%08x instead of 0x%08x\n",
     V3D_READ(V3D_IDENT0), V3D_EXPECTED_IDENT0);
  return -EINVAL;
 }

 ret = clk_prepare_enable(v3d->clk);
 if (ret != 0)
  return ret;




 V3D_WRITE(V3D_BPOA, 0);
 V3D_WRITE(V3D_BPOS, 0);

 vc4_v3d_init_hw(drm);

 ret = drm_irq_install(drm, platform_get_irq(pdev, 0));
 if (ret) {
  DRM_ERROR("Failed to install IRQ handler\n");
  return ret;
 }

 pm_runtime_set_active(dev);
 pm_runtime_use_autosuspend(dev);
 pm_runtime_set_autosuspend_delay(dev, 40);
 pm_runtime_enable(dev);

 vc4_debugfs_add_file(drm, "v3d_ident", vc4_v3d_debugfs_ident, ((void*)0));
 vc4_debugfs_add_regset32(drm, "v3d_regs", &v3d->regset);

 return 0;
}
