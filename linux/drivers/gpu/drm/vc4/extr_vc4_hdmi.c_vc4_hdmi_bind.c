
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int base; int type; } ;
struct vc4_hdmi_encoder {TYPE_1__ base; } ;
struct TYPE_7__ {void* nregs; void* regs; void* base; } ;
struct TYPE_6__ {void* nregs; void* regs; void* base; } ;
struct vc4_hdmi {int hpd_gpio; int hpd_active_low; TYPE_4__* ddc; void* hsm_clock; int * encoder; void* connector; int cec_adap; void* pixel_clock; TYPE_3__ hd_regset; void* hd_regs; TYPE_2__ hdmi_regset; void* hdmicore_regs; struct platform_device* pdev; } ;
struct vc4_dev {struct vc4_hdmi* hdmi; } ;
struct platform_device {int dummy; } ;
struct drm_device {struct vc4_dev* dev_private; } ;
struct device_node {int dummy; } ;
struct device {int of_node; } ;
typedef enum of_gpio_flags { ____Placeholder_of_gpio_flags } of_gpio_flags ;
struct TYPE_8__ {int dev; } ;


 void* ARRAY_SIZE (void*) ;
 int CEC_CAP_LOG_ADDRS ;
 int CEC_CAP_PASSTHROUGH ;
 int CEC_CAP_RC ;
 int CEC_CAP_TRANSMIT ;
 int DRM_DEBUG (char*) ;
 int DRM_ERROR (char*,...) ;
 int DRM_MODE_ENCODER_TMDS ;
 int ENODEV ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int HDMI_READ (int ) ;
 int HDMI_WRITE (int ,int) ;
 int HD_READ (int ) ;
 int HD_WRITE (int ,int) ;
 int HSM_CLOCK_FREQ ;
 scalar_t__ IS_ERR (void*) ;
 int OF_GPIO_ACTIVE_LOW ;
 int PTR_ERR (void*) ;
 int PTR_ERR_OR_ZERO (int ) ;
 int VC4_ENCODER_TYPE_HDMI ;
 int VC4_HDMI_CEC_ADDR_MASK ;
 int VC4_HDMI_CEC_CNTRL_1 ;
 int VC4_HDMI_CEC_DIV_CLK_CNT_MASK ;
 int VC4_HDMI_CEC_DIV_CLK_CNT_SHIFT ;
 int VC4_HDMI_CPU_MASK_SET ;
 int VC4_HD_M_CTL ;
 int VC4_HD_M_ENABLE ;
 int VC4_HD_M_SW_RST ;
 int cec_allocate_adapter (int *,struct vc4_dev*,char*,int,int) ;
 int cec_delete_adapter (int ) ;
 int cec_register_adapter (int ,struct device*) ;
 int clk_disable_unprepare (void*) ;
 int clk_prepare_enable (void*) ;
 int clk_set_rate (void*,int ) ;
 struct drm_device* dev_get_drvdata (struct device*) ;
 void* devm_clk_get (struct device*,char*) ;
 void* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_threaded_irq (struct device*,int ,int ,int ,int ,char*,struct vc4_dev*) ;
 int drm_encoder_helper_add (int *,int *) ;
 int drm_encoder_init (struct drm_device*,int *,int *,int ,int *) ;
 void* hd_regs ;
 void* hdmi_regs ;
 TYPE_4__* of_find_i2c_adapter_by_node (struct device_node*) ;
 scalar_t__ of_find_property (int ,char*,int*) ;
 int of_get_named_gpio_flags (int ,char*,int ,int*) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (int ,char*,int ) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_enable (struct device*) ;
 int put_device (int *) ;
 struct platform_device* to_platform_device (struct device*) ;
 int udelay (int) ;
 int vc4_cec_irq_handler ;
 int vc4_cec_irq_handler_thread ;
 int vc4_debugfs_add_file (struct drm_device*,char*,int ,struct vc4_hdmi*) ;
 int vc4_hdmi_audio_init (struct vc4_hdmi*) ;
 int vc4_hdmi_cec_adap_ops ;
 int vc4_hdmi_connector_destroy (void*) ;
 void* vc4_hdmi_connector_init (struct drm_device*,int *) ;
 int vc4_hdmi_debugfs_regs ;
 int vc4_hdmi_encoder_destroy (int *) ;
 int vc4_hdmi_encoder_funcs ;
 int vc4_hdmi_encoder_helper_funcs ;
 void* vc4_ioremap_regs (struct platform_device*,int) ;

__attribute__((used)) static int vc4_hdmi_bind(struct device *dev, struct device *master, void *data)
{
 struct platform_device *pdev = to_platform_device(dev);
 struct drm_device *drm = dev_get_drvdata(master);
 struct vc4_dev *vc4 = drm->dev_private;
 struct vc4_hdmi *hdmi;
 struct vc4_hdmi_encoder *vc4_hdmi_encoder;
 struct device_node *ddc_node;
 u32 value;
 int ret;

 hdmi = devm_kzalloc(dev, sizeof(*hdmi), GFP_KERNEL);
 if (!hdmi)
  return -ENOMEM;

 vc4_hdmi_encoder = devm_kzalloc(dev, sizeof(*vc4_hdmi_encoder),
     GFP_KERNEL);
 if (!vc4_hdmi_encoder)
  return -ENOMEM;
 vc4_hdmi_encoder->base.type = VC4_ENCODER_TYPE_HDMI;
 hdmi->encoder = &vc4_hdmi_encoder->base.base;

 hdmi->pdev = pdev;
 hdmi->hdmicore_regs = vc4_ioremap_regs(pdev, 0);
 if (IS_ERR(hdmi->hdmicore_regs))
  return PTR_ERR(hdmi->hdmicore_regs);

 hdmi->hd_regs = vc4_ioremap_regs(pdev, 1);
 if (IS_ERR(hdmi->hd_regs))
  return PTR_ERR(hdmi->hd_regs);

 hdmi->hdmi_regset.base = hdmi->hdmicore_regs;
 hdmi->hdmi_regset.regs = hdmi_regs;
 hdmi->hdmi_regset.nregs = ARRAY_SIZE(hdmi_regs);
 hdmi->hd_regset.base = hdmi->hd_regs;
 hdmi->hd_regset.regs = hd_regs;
 hdmi->hd_regset.nregs = ARRAY_SIZE(hd_regs);

 hdmi->pixel_clock = devm_clk_get(dev, "pixel");
 if (IS_ERR(hdmi->pixel_clock)) {
  DRM_ERROR("Failed to get pixel clock\n");
  return PTR_ERR(hdmi->pixel_clock);
 }
 hdmi->hsm_clock = devm_clk_get(dev, "hdmi");
 if (IS_ERR(hdmi->hsm_clock)) {
  DRM_ERROR("Failed to get HDMI state machine clock\n");
  return PTR_ERR(hdmi->hsm_clock);
 }

 ddc_node = of_parse_phandle(dev->of_node, "ddc", 0);
 if (!ddc_node) {
  DRM_ERROR("Failed to find ddc node in device tree\n");
  return -ENODEV;
 }

 hdmi->ddc = of_find_i2c_adapter_by_node(ddc_node);
 of_node_put(ddc_node);
 if (!hdmi->ddc) {
  DRM_DEBUG("Failed to get ddc i2c adapter by node\n");
  return -EPROBE_DEFER;
 }





 ret = clk_set_rate(hdmi->hsm_clock, HSM_CLOCK_FREQ);
 if (ret) {
  DRM_ERROR("Failed to set HSM clock rate: %d\n", ret);
  goto err_put_i2c;
 }

 ret = clk_prepare_enable(hdmi->hsm_clock);
 if (ret) {
  DRM_ERROR("Failed to turn on HDMI state machine clock: %d\n",
     ret);
  goto err_put_i2c;
 }




 if (of_find_property(dev->of_node, "hpd-gpios", &value)) {
  enum of_gpio_flags hpd_gpio_flags;

  hdmi->hpd_gpio = of_get_named_gpio_flags(dev->of_node,
        "hpd-gpios", 0,
        &hpd_gpio_flags);
  if (hdmi->hpd_gpio < 0) {
   ret = hdmi->hpd_gpio;
   goto err_unprepare_hsm;
  }

  hdmi->hpd_active_low = hpd_gpio_flags & OF_GPIO_ACTIVE_LOW;
 }

 vc4->hdmi = hdmi;


 if (!(HD_READ(VC4_HD_M_CTL) & VC4_HD_M_ENABLE)) {
  HD_WRITE(VC4_HD_M_CTL, VC4_HD_M_SW_RST);
  udelay(1);
  HD_WRITE(VC4_HD_M_CTL, 0);

  HD_WRITE(VC4_HD_M_CTL, VC4_HD_M_ENABLE);
 }
 pm_runtime_enable(dev);

 drm_encoder_init(drm, hdmi->encoder, &vc4_hdmi_encoder_funcs,
    DRM_MODE_ENCODER_TMDS, ((void*)0));
 drm_encoder_helper_add(hdmi->encoder, &vc4_hdmi_encoder_helper_funcs);

 hdmi->connector = vc4_hdmi_connector_init(drm, hdmi->encoder);
 if (IS_ERR(hdmi->connector)) {
  ret = PTR_ERR(hdmi->connector);
  goto err_destroy_encoder;
 }
 ret = vc4_hdmi_audio_init(hdmi);
 if (ret)
  goto err_destroy_encoder;

 vc4_debugfs_add_file(drm, "hdmi_regs", vc4_hdmi_debugfs_regs, hdmi);

 return 0;







err_destroy_encoder:
 vc4_hdmi_encoder_destroy(hdmi->encoder);
err_unprepare_hsm:
 clk_disable_unprepare(hdmi->hsm_clock);
 pm_runtime_disable(dev);
err_put_i2c:
 put_device(&hdmi->ddc->dev);

 return ret;
}
