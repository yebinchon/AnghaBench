
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct resource {int dummy; } ;
struct platform_device {int dev; } ;
struct drm_device {TYPE_1__* dev; struct arcpgu_drm_private* dev_private; } ;
struct device_node {int dummy; } ;
struct arcpgu_drm_private {int regs; int clk; } ;
struct TYPE_6__ {int of_node; } ;


 int ARCPGU_REG_ID ;
 int DMA_BIT_MASK (int) ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int arc_pgu_read (struct arcpgu_drm_private*,int ) ;
 scalar_t__ arc_pgu_setup_crtc (struct drm_device*) ;
 int arcpgu_drm_hdmi_init (struct drm_device*,struct device_node*) ;
 int arcpgu_drm_sim_init (struct drm_device*,int *) ;
 int arcpgu_setup_mode_config (struct drm_device*) ;
 int dev_info (TYPE_1__*,char*,int ) ;
 int devm_clk_get (TYPE_1__*,char*) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 struct arcpgu_drm_private* devm_kzalloc (int *,int,int ) ;
 scalar_t__ dma_set_mask_and_coherent (TYPE_1__*,int ) ;
 int drm_kms_helper_poll_init (struct drm_device*) ;
 int drm_mode_config_reset (struct drm_device*) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (int ,char*,int ) ;
 int of_reserved_mem_device_init (TYPE_1__*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct drm_device*) ;
 struct platform_device* to_platform_device (TYPE_1__*) ;

__attribute__((used)) static int arcpgu_load(struct drm_device *drm)
{
 struct platform_device *pdev = to_platform_device(drm->dev);
 struct arcpgu_drm_private *arcpgu;
 struct device_node *encoder_node;
 struct resource *res;
 int ret;

 arcpgu = devm_kzalloc(&pdev->dev, sizeof(*arcpgu), GFP_KERNEL);
 if (arcpgu == ((void*)0))
  return -ENOMEM;

 drm->dev_private = arcpgu;

 arcpgu->clk = devm_clk_get(drm->dev, "pxlclk");
 if (IS_ERR(arcpgu->clk))
  return PTR_ERR(arcpgu->clk);

 arcpgu_setup_mode_config(drm);

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 arcpgu->regs = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(arcpgu->regs))
  return PTR_ERR(arcpgu->regs);

 dev_info(drm->dev, "arc_pgu ID: 0x%x\n",
   arc_pgu_read(arcpgu, ARCPGU_REG_ID));


 ret = of_reserved_mem_device_init(drm->dev);
 if (ret && ret != -ENODEV)
  return ret;

 if (dma_set_mask_and_coherent(drm->dev, DMA_BIT_MASK(32)))
  return -ENODEV;

 if (arc_pgu_setup_crtc(drm) < 0)
  return -ENODEV;


 encoder_node = of_parse_phandle(drm->dev->of_node, "encoder-slave", 0);
 if (encoder_node) {
  ret = arcpgu_drm_hdmi_init(drm, encoder_node);
  of_node_put(encoder_node);
  if (ret < 0)
   return ret;
 } else {
  ret = arcpgu_drm_sim_init(drm, ((void*)0));
  if (ret < 0)
   return ret;
 }

 drm_mode_config_reset(drm);
 drm_kms_helper_poll_init(drm);

 platform_set_drvdata(pdev, drm);
 return 0;
}
