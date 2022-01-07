
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int base; int type; } ;
struct vc4_dpi_encoder {TYPE_1__ base; struct vc4_dpi* dpi; } ;
struct TYPE_4__ {int nregs; int regs; void* base; } ;
struct vc4_dpi {void* core_clock; int * encoder; TYPE_2__ regset; void* pixel_clock; void* regs; struct platform_device* pdev; } ;
struct vc4_dev {struct vc4_dpi* dpi; } ;
struct platform_device {int dummy; } ;
struct drm_device {int dummy; } ;
struct device {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int DPI_ID ;
 scalar_t__ DPI_ID_VALUE ;
 scalar_t__ DPI_READ (int ) ;
 int DRM_ERROR (char*,int) ;
 int DRM_MODE_ENCODER_DPI ;
 int ENODEV ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int VC4_ENCODER_TYPE_DPI ;
 int clk_disable_unprepare (void*) ;
 int clk_prepare_enable (void*) ;
 int dev_err (struct device*,char*,scalar_t__,scalar_t__) ;
 struct drm_device* dev_get_drvdata (struct device*) ;
 int dev_set_drvdata (struct device*,struct vc4_dpi*) ;
 void* devm_clk_get (struct device*,char*) ;
 void* devm_kzalloc (struct device*,int,int ) ;
 int dpi_regs ;
 int drm_encoder_cleanup (int *) ;
 int drm_encoder_helper_add (int *,int *) ;
 int drm_encoder_init (struct drm_device*,int *,int *,int ,int *) ;
 struct platform_device* to_platform_device (struct device*) ;
 struct vc4_dev* to_vc4_dev (struct drm_device*) ;
 int vc4_debugfs_add_regset32 (struct drm_device*,char*,TYPE_2__*) ;
 int vc4_dpi_encoder_funcs ;
 int vc4_dpi_encoder_helper_funcs ;
 int vc4_dpi_init_bridge (struct vc4_dpi*) ;
 void* vc4_ioremap_regs (struct platform_device*,int ) ;

__attribute__((used)) static int vc4_dpi_bind(struct device *dev, struct device *master, void *data)
{
 struct platform_device *pdev = to_platform_device(dev);
 struct drm_device *drm = dev_get_drvdata(master);
 struct vc4_dev *vc4 = to_vc4_dev(drm);
 struct vc4_dpi *dpi;
 struct vc4_dpi_encoder *vc4_dpi_encoder;
 int ret;

 dpi = devm_kzalloc(dev, sizeof(*dpi), GFP_KERNEL);
 if (!dpi)
  return -ENOMEM;

 vc4_dpi_encoder = devm_kzalloc(dev, sizeof(*vc4_dpi_encoder),
           GFP_KERNEL);
 if (!vc4_dpi_encoder)
  return -ENOMEM;
 vc4_dpi_encoder->base.type = VC4_ENCODER_TYPE_DPI;
 vc4_dpi_encoder->dpi = dpi;
 dpi->encoder = &vc4_dpi_encoder->base.base;

 dpi->pdev = pdev;
 dpi->regs = vc4_ioremap_regs(pdev, 0);
 if (IS_ERR(dpi->regs))
  return PTR_ERR(dpi->regs);
 dpi->regset.base = dpi->regs;
 dpi->regset.regs = dpi_regs;
 dpi->regset.nregs = ARRAY_SIZE(dpi_regs);

 if (DPI_READ(DPI_ID) != DPI_ID_VALUE) {
  dev_err(dev, "Port returned 0x%08x for ID instead of 0x%08x\n",
   DPI_READ(DPI_ID), DPI_ID_VALUE);
  return -ENODEV;
 }

 dpi->core_clock = devm_clk_get(dev, "core");
 if (IS_ERR(dpi->core_clock)) {
  ret = PTR_ERR(dpi->core_clock);
  if (ret != -EPROBE_DEFER)
   DRM_ERROR("Failed to get core clock: %d\n", ret);
  return ret;
 }
 dpi->pixel_clock = devm_clk_get(dev, "pixel");
 if (IS_ERR(dpi->pixel_clock)) {
  ret = PTR_ERR(dpi->pixel_clock);
  if (ret != -EPROBE_DEFER)
   DRM_ERROR("Failed to get pixel clock: %d\n", ret);
  return ret;
 }

 ret = clk_prepare_enable(dpi->core_clock);
 if (ret)
  DRM_ERROR("Failed to turn on core clock: %d\n", ret);

 drm_encoder_init(drm, dpi->encoder, &vc4_dpi_encoder_funcs,
    DRM_MODE_ENCODER_DPI, ((void*)0));
 drm_encoder_helper_add(dpi->encoder, &vc4_dpi_encoder_helper_funcs);

 ret = vc4_dpi_init_bridge(dpi);
 if (ret)
  goto err_destroy_encoder;

 dev_set_drvdata(dev, dpi);

 vc4->dpi = dpi;

 vc4_debugfs_add_regset32(drm, "dpi_regs", &dpi->regset);

 return 0;

err_destroy_encoder:
 drm_encoder_cleanup(dpi->encoder);
 clk_disable_unprepare(dpi->core_clock);
 return ret;
}
