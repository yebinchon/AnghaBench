
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct resource {int dummy; } ;
struct platform_device {int dummy; } ;
struct hdlcd_drm_private {int crtc; int * mmio; int dma_end_count; int vsync_count; int bus_error_count; int buffer_underrun_count; int * clk; } ;
struct drm_device {int dev; struct hdlcd_drm_private* dev_private; } ;


 int DMA_BIT_MASK (int) ;
 int DRM_ERROR (char*,...) ;
 int DRM_INFO (char*,int,int) ;
 int EINVAL ;
 int ENODEV ;
 int HDLCD_PRODUCT_ID ;
 int HDLCD_PRODUCT_MASK ;
 int HDLCD_REG_VERSION ;
 int HDLCD_VERSION_MAJOR_MASK ;
 int HDLCD_VERSION_MINOR_MASK ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int atomic_set (int *,int ) ;
 int * devm_clk_get (int ,char*) ;
 int * devm_ioremap_resource (int ,struct resource*) ;
 int dma_set_mask_and_coherent (int ,int ) ;
 int drm_crtc_cleanup (int *) ;
 int drm_irq_install (struct drm_device*,int ) ;
 int hdlcd_read (struct hdlcd_drm_private*,int ) ;
 int hdlcd_setup_crtc (struct drm_device*) ;
 int of_reserved_mem_device_init (int ) ;
 int of_reserved_mem_device_release (int ) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 struct platform_device* to_platform_device (int ) ;

__attribute__((used)) static int hdlcd_load(struct drm_device *drm, unsigned long flags)
{
 struct hdlcd_drm_private *hdlcd = drm->dev_private;
 struct platform_device *pdev = to_platform_device(drm->dev);
 struct resource *res;
 u32 version;
 int ret;

 hdlcd->clk = devm_clk_get(drm->dev, "pxlclk");
 if (IS_ERR(hdlcd->clk))
  return PTR_ERR(hdlcd->clk);
 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 hdlcd->mmio = devm_ioremap_resource(drm->dev, res);
 if (IS_ERR(hdlcd->mmio)) {
  DRM_ERROR("failed to map control registers area\n");
  ret = PTR_ERR(hdlcd->mmio);
  hdlcd->mmio = ((void*)0);
  return ret;
 }

 version = hdlcd_read(hdlcd, HDLCD_REG_VERSION);
 if ((version & HDLCD_PRODUCT_MASK) != HDLCD_PRODUCT_ID) {
  DRM_ERROR("unknown product id: 0x%x\n", version);
  return -EINVAL;
 }
 DRM_INFO("found ARM HDLCD version r%dp%d\n",
  (version & HDLCD_VERSION_MAJOR_MASK) >> 8,
  version & HDLCD_VERSION_MINOR_MASK);


 ret = of_reserved_mem_device_init(drm->dev);
 if (ret && ret != -ENODEV)
  return ret;

 ret = dma_set_mask_and_coherent(drm->dev, DMA_BIT_MASK(32));
 if (ret)
  goto setup_fail;

 ret = hdlcd_setup_crtc(drm);
 if (ret < 0) {
  DRM_ERROR("failed to create crtc\n");
  goto setup_fail;
 }

 ret = drm_irq_install(drm, platform_get_irq(pdev, 0));
 if (ret < 0) {
  DRM_ERROR("failed to install IRQ handler\n");
  goto irq_fail;
 }

 return 0;

irq_fail:
 drm_crtc_cleanup(&hdlcd->crtc);
setup_fail:
 of_reserved_mem_device_release(drm->dev);

 return ret;
}
