
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zx_vga {int i2c_wclk; int complete; int mmio; struct device* dev; } ;
struct resource {int dummy; } ;
struct platform_device {int dummy; } ;
struct drm_device {int dummy; } ;
struct device {int dummy; } ;


 int DRM_DEV_ERROR (struct device*,char*,int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 int IRQF_SHARED ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_name (struct device*) ;
 int dev_set_drvdata (struct device*,struct zx_vga*) ;
 int devm_clk_get (struct device*,char*) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 struct zx_vga* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_threaded_irq (struct device*,int,int ,int ,int ,int ,struct zx_vga*) ;
 int init_completion (int *) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 struct platform_device* to_platform_device (struct device*) ;
 int zx_vga_ddc_register (struct zx_vga*) ;
 int zx_vga_hw_init (struct zx_vga*) ;
 int zx_vga_irq_handler ;
 int zx_vga_irq_thread ;
 int zx_vga_pwrctrl_init (struct zx_vga*) ;
 int zx_vga_register (struct drm_device*,struct zx_vga*) ;

__attribute__((used)) static int zx_vga_bind(struct device *dev, struct device *master, void *data)
{
 struct platform_device *pdev = to_platform_device(dev);
 struct drm_device *drm = data;
 struct resource *res;
 struct zx_vga *vga;
 int irq;
 int ret;

 vga = devm_kzalloc(dev, sizeof(*vga), GFP_KERNEL);
 if (!vga)
  return -ENOMEM;

 vga->dev = dev;
 dev_set_drvdata(dev, vga);

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 vga->mmio = devm_ioremap_resource(dev, res);
 if (IS_ERR(vga->mmio))
  return PTR_ERR(vga->mmio);

 irq = platform_get_irq(pdev, 0);
 if (irq < 0)
  return irq;

 vga->i2c_wclk = devm_clk_get(dev, "i2c_wclk");
 if (IS_ERR(vga->i2c_wclk)) {
  ret = PTR_ERR(vga->i2c_wclk);
  DRM_DEV_ERROR(dev, "failed to get i2c_wclk: %d\n", ret);
  return ret;
 }

 ret = zx_vga_pwrctrl_init(vga);
 if (ret) {
  DRM_DEV_ERROR(dev, "failed to init power control: %d\n", ret);
  return ret;
 }

 ret = zx_vga_ddc_register(vga);
 if (ret) {
  DRM_DEV_ERROR(dev, "failed to register ddc: %d\n", ret);
  return ret;
 }

 ret = zx_vga_register(drm, vga);
 if (ret) {
  DRM_DEV_ERROR(dev, "failed to register vga: %d\n", ret);
  return ret;
 }

 init_completion(&vga->complete);

 ret = devm_request_threaded_irq(dev, irq, zx_vga_irq_handler,
     zx_vga_irq_thread, IRQF_SHARED,
     dev_name(dev), vga);
 if (ret) {
  DRM_DEV_ERROR(dev, "failed to request threaded irq: %d\n", ret);
  return ret;
 }

 ret = clk_prepare_enable(vga->i2c_wclk);
 if (ret)
  return ret;

 zx_vga_hw_init(vga);

 return 0;
}
