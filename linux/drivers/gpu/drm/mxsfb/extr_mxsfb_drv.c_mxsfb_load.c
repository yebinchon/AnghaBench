
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct resource {int dummy; } ;
struct platform_device {TYPE_1__* id_entry; int dev; } ;
struct mxsfb_drm_private {int panel; int connector; int pipe; int * clk_disp_axi; int * clk_axi; int * clk; int * base; int * devdata; } ;
struct TYPE_4__ {int * helper_private; int * funcs; int max_height; int max_width; int min_height; int min_width; int num_crtc; } ;
struct drm_device {int dev; TYPE_2__ mode_config; struct mxsfb_drm_private* dev_private; } ;
struct TYPE_3__ {size_t driver_data; } ;


 int ARRAY_SIZE (int ) ;
 int DMA_BIT_MASK (int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int *) ;
 int MXSFB_MAX_XRES ;
 int MXSFB_MAX_YRES ;
 int MXSFB_MIN_XRES ;
 int MXSFB_MIN_YRES ;
 int PTR_ERR (int *) ;
 int dev_err (int ,char*) ;
 void* devm_clk_get (int ,char*) ;
 int * devm_ioremap_resource (int ,struct resource*) ;
 struct mxsfb_drm_private* devm_kzalloc (int *,int,int ) ;
 int dma_set_mask_and_coherent (int ,int ) ;
 int drm_helper_hpd_irq_event (struct drm_device*) ;
 int drm_irq_install (struct drm_device*,int ) ;
 int drm_kms_helper_poll_init (struct drm_device*) ;
 int drm_mode_config_init (struct drm_device*) ;
 int drm_mode_config_reset (struct drm_device*) ;
 int drm_panel_attach (int ,int *) ;
 int drm_panel_detach (int ) ;
 int drm_simple_display_pipe_init (struct drm_device*,int *,int *,int ,int ,int *,int *) ;
 int drm_vblank_init (struct drm_device*,int ) ;
 int mxsfb_create_output (struct drm_device*) ;
 int * mxsfb_devdata ;
 int mxsfb_formats ;
 int mxsfb_funcs ;
 int mxsfb_mode_config_funcs ;
 int mxsfb_mode_config_helpers ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct drm_device*) ;
 int pm_runtime_disable (int ) ;
 int pm_runtime_enable (int ) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put_sync (int ) ;
 struct platform_device* to_platform_device (int ) ;

__attribute__((used)) static int mxsfb_load(struct drm_device *drm, unsigned long flags)
{
 struct platform_device *pdev = to_platform_device(drm->dev);
 struct mxsfb_drm_private *mxsfb;
 struct resource *res;
 int ret;

 mxsfb = devm_kzalloc(&pdev->dev, sizeof(*mxsfb), GFP_KERNEL);
 if (!mxsfb)
  return -ENOMEM;

 drm->dev_private = mxsfb;
 mxsfb->devdata = &mxsfb_devdata[pdev->id_entry->driver_data];

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 mxsfb->base = devm_ioremap_resource(drm->dev, res);
 if (IS_ERR(mxsfb->base))
  return PTR_ERR(mxsfb->base);

 mxsfb->clk = devm_clk_get(drm->dev, ((void*)0));
 if (IS_ERR(mxsfb->clk))
  return PTR_ERR(mxsfb->clk);

 mxsfb->clk_axi = devm_clk_get(drm->dev, "axi");
 if (IS_ERR(mxsfb->clk_axi))
  mxsfb->clk_axi = ((void*)0);

 mxsfb->clk_disp_axi = devm_clk_get(drm->dev, "disp_axi");
 if (IS_ERR(mxsfb->clk_disp_axi))
  mxsfb->clk_disp_axi = ((void*)0);

 ret = dma_set_mask_and_coherent(drm->dev, DMA_BIT_MASK(32));
 if (ret)
  return ret;

 pm_runtime_enable(drm->dev);

 ret = drm_vblank_init(drm, drm->mode_config.num_crtc);
 if (ret < 0) {
  dev_err(drm->dev, "Failed to initialise vblank\n");
  goto err_vblank;
 }


 drm_mode_config_init(drm);

 ret = mxsfb_create_output(drm);
 if (ret < 0) {
  dev_err(drm->dev, "Failed to create outputs\n");
  goto err_vblank;
 }

 ret = drm_simple_display_pipe_init(drm, &mxsfb->pipe, &mxsfb_funcs,
   mxsfb_formats, ARRAY_SIZE(mxsfb_formats), ((void*)0),
   &mxsfb->connector);
 if (ret < 0) {
  dev_err(drm->dev, "Cannot setup simple display pipe\n");
  goto err_vblank;
 }

 ret = drm_panel_attach(mxsfb->panel, &mxsfb->connector);
 if (ret) {
  dev_err(drm->dev, "Cannot connect panel\n");
  goto err_vblank;
 }

 drm->mode_config.min_width = MXSFB_MIN_XRES;
 drm->mode_config.min_height = MXSFB_MIN_YRES;
 drm->mode_config.max_width = MXSFB_MAX_XRES;
 drm->mode_config.max_height = MXSFB_MAX_YRES;
 drm->mode_config.funcs = &mxsfb_mode_config_funcs;
 drm->mode_config.helper_private = &mxsfb_mode_config_helpers;

 drm_mode_config_reset(drm);

 pm_runtime_get_sync(drm->dev);
 ret = drm_irq_install(drm, platform_get_irq(pdev, 0));
 pm_runtime_put_sync(drm->dev);

 if (ret < 0) {
  dev_err(drm->dev, "Failed to install IRQ handler\n");
  goto err_irq;
 }

 drm_kms_helper_poll_init(drm);

 platform_set_drvdata(pdev, drm);

 drm_helper_hpd_irq_event(drm);

 return 0;

err_irq:
 drm_panel_detach(mxsfb->panel);
err_vblank:
 pm_runtime_disable(drm->dev);

 return ret;
}
