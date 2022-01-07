
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int * bridge; } ;
struct TYPE_6__ {TYPE_3__ base; int type; } ;
struct vc4_dsi_encoder {TYPE_1__ base; struct vc4_dsi* dsi; } ;
struct TYPE_7__ {void* nregs; void* regs; void* base; } ;
struct vc4_dsi {uintptr_t port; TYPE_2__ regset; TYPE_3__* encoder; void* bridge; void* escape_clock; void* pixel_clock; void* pll_phy_clock; scalar_t__ reg_dma_mem; int xfer_completion; int reg_paddr; void* reg_dma_chan; int reg_dma_paddr; void* regs; } ;
struct vc4_dev {struct vc4_dsi* dsi1; } ;
struct platform_device {int dummy; } ;
struct of_device_id {scalar_t__ data; } ;
struct drm_panel {int dummy; } ;
struct drm_device {int dummy; } ;
struct device {int of_node; } ;
typedef int dma_cap_mask_t ;


 void* ARRAY_SIZE (void*) ;
 int DMA_MEMCPY ;
 int DRM_ERROR (char*,...) ;
 int DRM_MODE_CONNECTOR_DSI ;
 int DRM_MODE_ENCODER_DSI ;
 scalar_t__ DSI1_INTERRUPTS_ALWAYS_ENABLED ;
 scalar_t__ DSI_ID_VALUE ;
 scalar_t__ DSI_PORT_READ (int ) ;
 int DSI_PORT_WRITE (int ,scalar_t__) ;
 int ENODEV ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int ID ;
 int INT_EN ;
 int INT_STAT ;
 int IRQF_ONESHOT ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int VC4_ENCODER_TYPE_DSI1 ;
 int be32_to_cpup (int ) ;
 int clk_set_rate (void*,int) ;
 int dev_err (struct device*,char*,int,...) ;
 void* dev_get_drvdata (struct device*) ;
 void* devm_clk_get (struct device*,char*) ;
 void* devm_drm_panel_bridge_add (struct device*,struct drm_panel*,int ) ;
 struct vc4_dsi_encoder* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_irq (struct device*,int ,int ,int ,char*,struct vc4_dsi*) ;
 int devm_request_threaded_irq (struct device*,int ,int ,int ,int ,char*,struct vc4_dsi*) ;
 scalar_t__ dma_alloc_coherent (struct device*,int,int *,int ) ;
 int dma_cap_set (int ,int ) ;
 int dma_cap_zero (int ) ;
 void* dma_request_chan_by_mask (int *) ;
 int drm_bridge_attach (TYPE_3__*,void*,int *) ;
 int drm_encoder_helper_add (TYPE_3__*,int *) ;
 int drm_encoder_init (struct drm_device*,TYPE_3__*,int *,int ,int *) ;
 int drm_of_find_panel_or_bridge (int ,int ,int ,struct drm_panel**,void**) ;
 void* dsi0_regs ;
 void* dsi1_regs ;
 int init_completion (int *) ;
 int of_get_address (int ,int ,int *,int *) ;
 struct of_device_id* of_match_device (int ,struct device*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int pm_runtime_enable (struct device*) ;
 struct platform_device* to_platform_device (struct device*) ;
 struct vc4_dev* to_vc4_dev (struct drm_device*) ;
 int vc4_debugfs_add_regset32 (struct drm_device*,char*,TYPE_2__*) ;
 int vc4_dsi_dt_match ;
 int vc4_dsi_encoder_funcs ;
 int vc4_dsi_encoder_helper_funcs ;
 int vc4_dsi_init_phy_clocks (struct vc4_dsi*) ;
 int vc4_dsi_irq_defer_to_thread_handler ;
 int vc4_dsi_irq_handler ;
 void* vc4_ioremap_regs (struct platform_device*,int ) ;

__attribute__((used)) static int vc4_dsi_bind(struct device *dev, struct device *master, void *data)
{
 struct platform_device *pdev = to_platform_device(dev);
 struct drm_device *drm = dev_get_drvdata(master);
 struct vc4_dev *vc4 = to_vc4_dev(drm);
 struct vc4_dsi *dsi = dev_get_drvdata(dev);
 struct vc4_dsi_encoder *vc4_dsi_encoder;
 struct drm_panel *panel;
 const struct of_device_id *match;
 dma_cap_mask_t dma_mask;
 int ret;

 match = of_match_device(vc4_dsi_dt_match, dev);
 if (!match)
  return -ENODEV;

 dsi->port = (uintptr_t)match->data;

 vc4_dsi_encoder = devm_kzalloc(dev, sizeof(*vc4_dsi_encoder),
           GFP_KERNEL);
 if (!vc4_dsi_encoder)
  return -ENOMEM;
 vc4_dsi_encoder->base.type = VC4_ENCODER_TYPE_DSI1;
 vc4_dsi_encoder->dsi = dsi;
 dsi->encoder = &vc4_dsi_encoder->base.base;

 dsi->regs = vc4_ioremap_regs(pdev, 0);
 if (IS_ERR(dsi->regs))
  return PTR_ERR(dsi->regs);

 dsi->regset.base = dsi->regs;
 if (dsi->port == 0) {
  dsi->regset.regs = dsi0_regs;
  dsi->regset.nregs = ARRAY_SIZE(dsi0_regs);
 } else {
  dsi->regset.regs = dsi1_regs;
  dsi->regset.nregs = ARRAY_SIZE(dsi1_regs);
 }

 if (DSI_PORT_READ(ID) != DSI_ID_VALUE) {
  dev_err(dev, "Port returned 0x%08x for ID instead of 0x%08x\n",
   DSI_PORT_READ(ID), DSI_ID_VALUE);
  return -ENODEV;
 }





 if (dsi->port == 1) {
  dsi->reg_dma_mem = dma_alloc_coherent(dev, 4,
            &dsi->reg_dma_paddr,
            GFP_KERNEL);
  if (!dsi->reg_dma_mem) {
   DRM_ERROR("Failed to get DMA memory\n");
   return -ENOMEM;
  }

  dma_cap_zero(dma_mask);
  dma_cap_set(DMA_MEMCPY, dma_mask);
  dsi->reg_dma_chan = dma_request_chan_by_mask(&dma_mask);
  if (IS_ERR(dsi->reg_dma_chan)) {
   ret = PTR_ERR(dsi->reg_dma_chan);
   if (ret != -EPROBE_DEFER)
    DRM_ERROR("Failed to get DMA channel: %d\n",
       ret);
   return ret;
  }





  dsi->reg_paddr = be32_to_cpup(of_get_address(dev->of_node,
            0, ((void*)0), ((void*)0)));
 }

 init_completion(&dsi->xfer_completion);

 DSI_PORT_WRITE(INT_EN, DSI1_INTERRUPTS_ALWAYS_ENABLED);

 DSI_PORT_WRITE(INT_STAT, DSI_PORT_READ(INT_STAT));

 if (dsi->reg_dma_mem)
  ret = devm_request_threaded_irq(dev, platform_get_irq(pdev, 0),
      vc4_dsi_irq_defer_to_thread_handler,
      vc4_dsi_irq_handler,
      IRQF_ONESHOT,
      "vc4 dsi", dsi);
 else
  ret = devm_request_irq(dev, platform_get_irq(pdev, 0),
           vc4_dsi_irq_handler, 0, "vc4 dsi", dsi);
 if (ret) {
  if (ret != -EPROBE_DEFER)
   dev_err(dev, "Failed to get interrupt: %d\n", ret);
  return ret;
 }

 dsi->escape_clock = devm_clk_get(dev, "escape");
 if (IS_ERR(dsi->escape_clock)) {
  ret = PTR_ERR(dsi->escape_clock);
  if (ret != -EPROBE_DEFER)
   dev_err(dev, "Failed to get escape clock: %d\n", ret);
  return ret;
 }

 dsi->pll_phy_clock = devm_clk_get(dev, "phy");
 if (IS_ERR(dsi->pll_phy_clock)) {
  ret = PTR_ERR(dsi->pll_phy_clock);
  if (ret != -EPROBE_DEFER)
   dev_err(dev, "Failed to get phy clock: %d\n", ret);
  return ret;
 }

 dsi->pixel_clock = devm_clk_get(dev, "pixel");
 if (IS_ERR(dsi->pixel_clock)) {
  ret = PTR_ERR(dsi->pixel_clock);
  if (ret != -EPROBE_DEFER)
   dev_err(dev, "Failed to get pixel clock: %d\n", ret);
  return ret;
 }

 ret = drm_of_find_panel_or_bridge(dev->of_node, 0, 0,
       &panel, &dsi->bridge);
 if (ret) {






  if (ret == -ENODEV)
   return 0;

  return ret;
 }

 if (panel) {
  dsi->bridge = devm_drm_panel_bridge_add(dev, panel,
       DRM_MODE_CONNECTOR_DSI);
  if (IS_ERR(dsi->bridge))
   return PTR_ERR(dsi->bridge);
 }


 ret = clk_set_rate(dsi->escape_clock, 100 * 1000000);
 if (ret) {
  dev_err(dev, "Failed to set esc clock: %d\n", ret);
  return ret;
 }

 ret = vc4_dsi_init_phy_clocks(dsi);
 if (ret)
  return ret;

 if (dsi->port == 1)
  vc4->dsi1 = dsi;

 drm_encoder_init(drm, dsi->encoder, &vc4_dsi_encoder_funcs,
    DRM_MODE_ENCODER_DSI, ((void*)0));
 drm_encoder_helper_add(dsi->encoder, &vc4_dsi_encoder_helper_funcs);

 ret = drm_bridge_attach(dsi->encoder, dsi->bridge, ((void*)0));
 if (ret) {
  dev_err(dev, "bridge attach failed: %d\n", ret);
  return ret;
 }





 dsi->encoder->bridge = ((void*)0);

 if (dsi->port == 0)
  vc4_debugfs_add_regset32(drm, "dsi0_regs", &dsi->regset);
 else
  vc4_debugfs_add_regset32(drm, "dsi1_regs", &dsi->regset);

 pm_runtime_enable(dev);

 return 0;
}
