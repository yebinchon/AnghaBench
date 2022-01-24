#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_5__ {int /*<<< orphan*/  base; int /*<<< orphan*/  type; } ;
struct vc4_hdmi_encoder {TYPE_1__ base; } ;
struct TYPE_7__ {void* nregs; void* regs; void* base; } ;
struct TYPE_6__ {void* nregs; void* regs; void* base; } ;
struct vc4_hdmi {int hpd_gpio; int hpd_active_low; TYPE_4__* ddc; void* hsm_clock; int /*<<< orphan*/ * encoder; void* connector; int /*<<< orphan*/  cec_adap; void* pixel_clock; TYPE_3__ hd_regset; void* hd_regs; TYPE_2__ hdmi_regset; void* hdmicore_regs; struct platform_device* pdev; } ;
struct vc4_dev {struct vc4_hdmi* hdmi; } ;
struct platform_device {int dummy; } ;
struct drm_device {struct vc4_dev* dev_private; } ;
struct device_node {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
typedef  enum of_gpio_flags { ____Placeholder_of_gpio_flags } of_gpio_flags ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 int CEC_CAP_LOG_ADDRS ; 
 int CEC_CAP_PASSTHROUGH ; 
 int CEC_CAP_RC ; 
 int CEC_CAP_TRANSMIT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  DRM_MODE_ENCODER_TMDS ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  HSM_CLOCK_FREQ ; 
 scalar_t__ FUNC7 (void*) ; 
 int OF_GPIO_ACTIVE_LOW ; 
 int FUNC8 (void*) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VC4_ENCODER_TYPE_HDMI ; 
 int VC4_HDMI_CEC_ADDR_MASK ; 
 int /*<<< orphan*/  VC4_HDMI_CEC_CNTRL_1 ; 
 int VC4_HDMI_CEC_DIV_CLK_CNT_MASK ; 
 int VC4_HDMI_CEC_DIV_CLK_CNT_SHIFT ; 
 int /*<<< orphan*/  VC4_HDMI_CPU_MASK_SET ; 
 int /*<<< orphan*/  VC4_HD_M_CTL ; 
 int VC4_HD_M_ENABLE ; 
 int VC4_HD_M_SW_RST ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct vc4_dev*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC13 (void*) ; 
 int FUNC14 (void*) ; 
 int FUNC15 (void*,int /*<<< orphan*/ ) ; 
 struct drm_device* FUNC16 (struct device*) ; 
 void* FUNC17 (struct device*,char*) ; 
 void* FUNC18 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC19 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct vc4_dev*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (struct drm_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* hd_regs ; 
 void* hdmi_regs ; 
 TYPE_4__* FUNC22 (struct device_node*) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ,char*,int*) ; 
 int FUNC24 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC25 (struct device_node*) ; 
 struct device_node* FUNC26 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (struct device*) ; 
 int /*<<< orphan*/  FUNC29 (struct device*) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 
 struct platform_device* FUNC31 (struct device*) ; 
 int /*<<< orphan*/  FUNC32 (int) ; 
 int /*<<< orphan*/  vc4_cec_irq_handler ; 
 int /*<<< orphan*/  vc4_cec_irq_handler_thread ; 
 int /*<<< orphan*/  FUNC33 (struct drm_device*,char*,int /*<<< orphan*/ ,struct vc4_hdmi*) ; 
 int FUNC34 (struct vc4_hdmi*) ; 
 int /*<<< orphan*/  vc4_hdmi_cec_adap_ops ; 
 int /*<<< orphan*/  FUNC35 (void*) ; 
 void* FUNC36 (struct drm_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vc4_hdmi_debugfs_regs ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vc4_hdmi_encoder_funcs ; 
 int /*<<< orphan*/  vc4_hdmi_encoder_helper_funcs ; 
 void* FUNC38 (struct platform_device*,int) ; 

__attribute__((used)) static int FUNC39(struct device *dev, struct device *master, void *data)
{
	struct platform_device *pdev = FUNC31(dev);
	struct drm_device *drm = FUNC16(master);
	struct vc4_dev *vc4 = drm->dev_private;
	struct vc4_hdmi *hdmi;
	struct vc4_hdmi_encoder *vc4_hdmi_encoder;
	struct device_node *ddc_node;
	u32 value;
	int ret;

	hdmi = FUNC18(dev, sizeof(*hdmi), GFP_KERNEL);
	if (!hdmi)
		return -ENOMEM;

	vc4_hdmi_encoder = FUNC18(dev, sizeof(*vc4_hdmi_encoder),
					GFP_KERNEL);
	if (!vc4_hdmi_encoder)
		return -ENOMEM;
	vc4_hdmi_encoder->base.type = VC4_ENCODER_TYPE_HDMI;
	hdmi->encoder = &vc4_hdmi_encoder->base.base;

	hdmi->pdev = pdev;
	hdmi->hdmicore_regs = FUNC38(pdev, 0);
	if (FUNC7(hdmi->hdmicore_regs))
		return FUNC8(hdmi->hdmicore_regs);

	hdmi->hd_regs = FUNC38(pdev, 1);
	if (FUNC7(hdmi->hd_regs))
		return FUNC8(hdmi->hd_regs);

	hdmi->hdmi_regset.base = hdmi->hdmicore_regs;
	hdmi->hdmi_regset.regs = hdmi_regs;
	hdmi->hdmi_regset.nregs = FUNC0(hdmi_regs);
	hdmi->hd_regset.base = hdmi->hd_regs;
	hdmi->hd_regset.regs = hd_regs;
	hdmi->hd_regset.nregs = FUNC0(hd_regs);

	hdmi->pixel_clock = FUNC17(dev, "pixel");
	if (FUNC7(hdmi->pixel_clock)) {
		FUNC2("Failed to get pixel clock\n");
		return FUNC8(hdmi->pixel_clock);
	}
	hdmi->hsm_clock = FUNC17(dev, "hdmi");
	if (FUNC7(hdmi->hsm_clock)) {
		FUNC2("Failed to get HDMI state machine clock\n");
		return FUNC8(hdmi->hsm_clock);
	}

	ddc_node = FUNC26(dev->of_node, "ddc", 0);
	if (!ddc_node) {
		FUNC2("Failed to find ddc node in device tree\n");
		return -ENODEV;
	}

	hdmi->ddc = FUNC22(ddc_node);
	FUNC25(ddc_node);
	if (!hdmi->ddc) {
		FUNC1("Failed to get ddc i2c adapter by node\n");
		return -EPROBE_DEFER;
	}

	/* This is the rate that is set by the firmware.  The number
	 * needs to be a bit higher than the pixel clock rate
	 * (generally 148.5Mhz).
	 */
	ret = FUNC15(hdmi->hsm_clock, HSM_CLOCK_FREQ);
	if (ret) {
		FUNC2("Failed to set HSM clock rate: %d\n", ret);
		goto err_put_i2c;
	}

	ret = FUNC14(hdmi->hsm_clock);
	if (ret) {
		FUNC2("Failed to turn on HDMI state machine clock: %d\n",
			  ret);
		goto err_put_i2c;
	}

	/* Only use the GPIO HPD pin if present in the DT, otherwise
	 * we'll use the HDMI core's register.
	 */
	if (FUNC23(dev->of_node, "hpd-gpios", &value)) {
		enum of_gpio_flags hpd_gpio_flags;

		hdmi->hpd_gpio = FUNC24(dev->of_node,
							 "hpd-gpios", 0,
							 &hpd_gpio_flags);
		if (hdmi->hpd_gpio < 0) {
			ret = hdmi->hpd_gpio;
			goto err_unprepare_hsm;
		}

		hdmi->hpd_active_low = hpd_gpio_flags & OF_GPIO_ACTIVE_LOW;
	}

	vc4->hdmi = hdmi;

	/* HDMI core must be enabled. */
	if (!(FUNC5(VC4_HD_M_CTL) & VC4_HD_M_ENABLE)) {
		FUNC6(VC4_HD_M_CTL, VC4_HD_M_SW_RST);
		FUNC32(1);
		FUNC6(VC4_HD_M_CTL, 0);

		FUNC6(VC4_HD_M_CTL, VC4_HD_M_ENABLE);
	}
	FUNC29(dev);

	FUNC21(drm, hdmi->encoder, &vc4_hdmi_encoder_funcs,
			 DRM_MODE_ENCODER_TMDS, NULL);
	FUNC20(hdmi->encoder, &vc4_hdmi_encoder_helper_funcs);

	hdmi->connector = FUNC36(drm, hdmi->encoder);
	if (FUNC7(hdmi->connector)) {
		ret = FUNC8(hdmi->connector);
		goto err_destroy_encoder;
	}
#ifdef CONFIG_DRM_VC4_HDMI_CEC
	hdmi->cec_adap = cec_allocate_adapter(&vc4_hdmi_cec_adap_ops,
					      vc4, "vc4",
					      CEC_CAP_TRANSMIT |
					      CEC_CAP_LOG_ADDRS |
					      CEC_CAP_PASSTHROUGH |
					      CEC_CAP_RC, 1);
	ret = PTR_ERR_OR_ZERO(hdmi->cec_adap);
	if (ret < 0)
		goto err_destroy_conn;
	HDMI_WRITE(VC4_HDMI_CPU_MASK_SET, 0xffffffff);
	value = HDMI_READ(VC4_HDMI_CEC_CNTRL_1);
	value &= ~VC4_HDMI_CEC_DIV_CLK_CNT_MASK;
	/*
	 * Set the logical address to Unregistered and set the clock
	 * divider: the hsm_clock rate and this divider setting will
	 * give a 40 kHz CEC clock.
	 */
	value |= VC4_HDMI_CEC_ADDR_MASK |
		 (4091 << VC4_HDMI_CEC_DIV_CLK_CNT_SHIFT);
	HDMI_WRITE(VC4_HDMI_CEC_CNTRL_1, value);
	ret = devm_request_threaded_irq(dev, platform_get_irq(pdev, 0),
					vc4_cec_irq_handler,
					vc4_cec_irq_handler_thread, 0,
					"vc4 hdmi cec", vc4);
	if (ret)
		goto err_delete_cec_adap;
	ret = cec_register_adapter(hdmi->cec_adap, dev);
	if (ret < 0)
		goto err_delete_cec_adap;
#endif

	ret = FUNC34(hdmi);
	if (ret)
		goto err_destroy_encoder;

	FUNC33(drm, "hdmi_regs", vc4_hdmi_debugfs_regs, hdmi);

	return 0;

#ifdef CONFIG_DRM_VC4_HDMI_CEC
err_delete_cec_adap:
	cec_delete_adapter(hdmi->cec_adap);
err_destroy_conn:
	vc4_hdmi_connector_destroy(hdmi->connector);
#endif
err_destroy_encoder:
	FUNC37(hdmi->encoder);
err_unprepare_hsm:
	FUNC13(hdmi->hsm_clock);
	FUNC28(dev);
err_put_i2c:
	FUNC30(&hdmi->ddc->dev);

	return ret;
}