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
typedef  int u8 ;
typedef  int u32 ;
struct resource {int /*<<< orphan*/  start; } ;
struct regmap_config {int dummy; } ;
struct platform_device_info {char* name; int size_data; void* dma_mask; struct dw_hdmi_i2s_audio_data* data; int /*<<< orphan*/  id; struct device* parent; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct dw_hdmi_plat_data {int /*<<< orphan*/ * regm; } ;
struct dw_hdmi_i2s_audio_data {int irq; int (* read ) (struct dw_hdmi*,int /*<<< orphan*/ ) ;int /*<<< orphan*/ * ops; struct dw_hdmi* hdmi; int /*<<< orphan*/  write; int /*<<< orphan*/  eld; int /*<<< orphan*/ * base; int /*<<< orphan*/  phys; } ;
struct dw_hdmi_cec_data {int irq; int (* read ) (struct dw_hdmi*,int /*<<< orphan*/ ) ;int /*<<< orphan*/ * ops; struct dw_hdmi* hdmi; int /*<<< orphan*/  write; int /*<<< orphan*/  eld; int /*<<< orphan*/ * base; int /*<<< orphan*/  phys; } ;
struct dw_hdmi_audio_data {int irq; int (* read ) (struct dw_hdmi*,int /*<<< orphan*/ ) ;int /*<<< orphan*/ * ops; struct dw_hdmi* hdmi; int /*<<< orphan*/  write; int /*<<< orphan*/  eld; int /*<<< orphan*/ * base; int /*<<< orphan*/  phys; } ;
struct TYPE_7__ {int /*<<< orphan*/  eld; } ;
struct TYPE_6__ {struct device_node* of_node; int /*<<< orphan*/ * funcs; struct dw_hdmi* driver_private; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;
struct dw_hdmi {int sample_rate; int disabled; int rxsense; int phy_mask; int mc_clkdis; int reg_shift; int version; int /*<<< orphan*/ * ddc; int /*<<< orphan*/ * isfr_clk; int /*<<< orphan*/ * cec_clk; int /*<<< orphan*/ * iahb_clk; TYPE_4__* i2c; void* cec; void* audio; int /*<<< orphan*/  disable_audio; int /*<<< orphan*/  enable_audio; TYPE_3__ connector; int /*<<< orphan*/ * regs; TYPE_2__ bridge; int /*<<< orphan*/ * unwedge_state; int /*<<< orphan*/ * default_state; int /*<<< orphan*/ * pinctrl; TYPE_1__ phy; struct device* dev; int /*<<< orphan*/ * regm; int /*<<< orphan*/  audio_lock; int /*<<< orphan*/  cec_notifier_mutex; int /*<<< orphan*/  audio_mutex; int /*<<< orphan*/  mutex; struct dw_hdmi_plat_data const* plat_data; } ;
struct device_node {int dummy; } ;
typedef  int /*<<< orphan*/  pdevinfo ;
typedef  int /*<<< orphan*/  cec ;
typedef  int /*<<< orphan*/  audio ;
struct TYPE_8__ {int /*<<< orphan*/  adap; } ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOENT ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 struct dw_hdmi* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HDMI_CONFIG0_CEC ; 
 int HDMI_CONFIG0_I2S ; 
 int /*<<< orphan*/  HDMI_CONFIG0_ID ; 
 int HDMI_CONFIG3_AHBAUDDMA ; 
 int /*<<< orphan*/  HDMI_CONFIG3_ID ; 
 int /*<<< orphan*/  HDMI_DESIGN_ID ; 
 int HDMI_PHY_HPD ; 
 int HDMI_PHY_RX_SENSE ; 
 int /*<<< orphan*/  HDMI_PRODUCT_ID0 ; 
 int HDMI_PRODUCT_ID0_HDMI_TX ; 
 int /*<<< orphan*/  HDMI_PRODUCT_ID1 ; 
 int HDMI_PRODUCT_ID1_HDCP ; 
 int HDMI_PRODUCT_ID1_HDMI_TX ; 
 int /*<<< orphan*/  HDMI_REVISION_ID ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PLATFORM_DEVID_AUTO ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,char*,int,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct device*) ; 
 int /*<<< orphan*/  FUNC10 (struct device*,char*) ; 
 void* FUNC11 (struct device*,char*) ; 
 int /*<<< orphan*/ * FUNC12 (struct device*,struct resource*) ; 
 struct dw_hdmi* FUNC13 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (struct device*) ; 
 int /*<<< orphan*/ * FUNC15 (struct device*,int /*<<< orphan*/ *,struct regmap_config const*) ; 
 int FUNC16 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dw_hdmi*) ; 
 int /*<<< orphan*/  dw_hdmi_ahb_audio_disable ; 
 int /*<<< orphan*/  dw_hdmi_ahb_audio_enable ; 
 int /*<<< orphan*/  dw_hdmi_bridge_funcs ; 
 int /*<<< orphan*/  dw_hdmi_cec_ops ; 
 int FUNC17 (struct dw_hdmi*) ; 
 int /*<<< orphan*/  dw_hdmi_hardirq ; 
 int /*<<< orphan*/ * FUNC18 (struct dw_hdmi*) ; 
 int /*<<< orphan*/  dw_hdmi_i2s_audio_disable ; 
 int /*<<< orphan*/  dw_hdmi_i2s_audio_enable ; 
 int /*<<< orphan*/  FUNC19 (struct dw_hdmi*) ; 
 int /*<<< orphan*/  dw_hdmi_irq ; 
 int /*<<< orphan*/  FUNC20 (struct dw_hdmi*) ; 
 int FUNC21 (struct dw_hdmi*,int /*<<< orphan*/ ) ; 
 struct regmap_config hdmi_regmap_32bit_config ; 
 struct regmap_config hdmi_regmap_8bit_config ; 
 int /*<<< orphan*/  hdmi_writeb ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (struct platform_device_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC26 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC27 (struct device_node*) ; 
 struct device_node* FUNC28 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (struct device_node*,char*,int*) ; 
 void* FUNC30 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC31 (struct platform_device_info*) ; 
 int FUNC32 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC33 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct dw_hdmi *
FUNC35(struct platform_device *pdev,
		const struct dw_hdmi_plat_data *plat_data)
{
	struct device *dev = &pdev->dev;
	struct device_node *np = dev->of_node;
	struct platform_device_info pdevinfo;
	struct device_node *ddc_node;
	struct dw_hdmi_cec_data cec;
	struct dw_hdmi *hdmi;
	struct resource *iores = NULL;
	int irq;
	int ret;
	u32 val = 1;
	u8 prod_id0;
	u8 prod_id1;
	u8 config0;
	u8 config3;

	hdmi = FUNC13(dev, sizeof(*hdmi), GFP_KERNEL);
	if (!hdmi)
		return FUNC1(-ENOMEM);

	hdmi->plat_data = plat_data;
	hdmi->dev = dev;
	hdmi->sample_rate = 48000;
	hdmi->disabled = true;
	hdmi->rxsense = true;
	hdmi->phy_mask = (u8)~(HDMI_PHY_HPD | HDMI_PHY_RX_SENSE);
	hdmi->mc_clkdis = 0x7f;

	FUNC25(&hdmi->mutex);
	FUNC25(&hdmi->audio_mutex);
	FUNC25(&hdmi->cec_notifier_mutex);
	FUNC34(&hdmi->audio_lock);

	ddc_node = FUNC28(np, "ddc-i2c-bus", 0);
	if (ddc_node) {
		hdmi->ddc = FUNC26(ddc_node);
		FUNC27(ddc_node);
		if (!hdmi->ddc) {
			FUNC6(hdmi->dev, "failed to read ddc node\n");
			return FUNC1(-EPROBE_DEFER);
		}

	} else {
		FUNC6(hdmi->dev, "no ddc property found\n");
	}

	if (!plat_data->regm) {
		const struct regmap_config *reg_config;

		FUNC29(np, "reg-io-width", &val);
		switch (val) {
		case 4:
			reg_config = &hdmi_regmap_32bit_config;
			hdmi->reg_shift = 2;
			break;
		case 1:
			reg_config = &hdmi_regmap_8bit_config;
			break;
		default:
			FUNC7(dev, "reg-io-width must be 1 or 4\n");
			return FUNC1(-EINVAL);
		}

		iores = FUNC33(pdev, IORESOURCE_MEM, 0);
		hdmi->regs = FUNC12(dev, iores);
		if (FUNC2(hdmi->regs)) {
			ret = FUNC3(hdmi->regs);
			goto err_res;
		}

		hdmi->regm = FUNC15(dev, hdmi->regs, reg_config);
		if (FUNC2(hdmi->regm)) {
			FUNC7(dev, "Failed to configure regmap\n");
			ret = FUNC3(hdmi->regm);
			goto err_res;
		}
	} else {
		hdmi->regm = plat_data->regm;
	}

	hdmi->isfr_clk = FUNC11(hdmi->dev, "isfr");
	if (FUNC2(hdmi->isfr_clk)) {
		ret = FUNC3(hdmi->isfr_clk);
		FUNC7(hdmi->dev, "Unable to get HDMI isfr clk: %d\n", ret);
		goto err_res;
	}

	ret = FUNC5(hdmi->isfr_clk);
	if (ret) {
		FUNC7(hdmi->dev, "Cannot enable HDMI isfr clock: %d\n", ret);
		goto err_res;
	}

	hdmi->iahb_clk = FUNC11(hdmi->dev, "iahb");
	if (FUNC2(hdmi->iahb_clk)) {
		ret = FUNC3(hdmi->iahb_clk);
		FUNC7(hdmi->dev, "Unable to get HDMI iahb clk: %d\n", ret);
		goto err_isfr;
	}

	ret = FUNC5(hdmi->iahb_clk);
	if (ret) {
		FUNC7(hdmi->dev, "Cannot enable HDMI iahb clock: %d\n", ret);
		goto err_isfr;
	}

	hdmi->cec_clk = FUNC11(hdmi->dev, "cec");
	if (FUNC3(hdmi->cec_clk) == -ENOENT) {
		hdmi->cec_clk = NULL;
	} else if (FUNC2(hdmi->cec_clk)) {
		ret = FUNC3(hdmi->cec_clk);
		if (ret != -EPROBE_DEFER)
			FUNC7(hdmi->dev, "Cannot get HDMI cec clock: %d\n",
				ret);

		hdmi->cec_clk = NULL;
		goto err_iahb;
	} else {
		ret = FUNC5(hdmi->cec_clk);
		if (ret) {
			FUNC7(hdmi->dev, "Cannot enable HDMI cec clock: %d\n",
				ret);
			goto err_iahb;
		}
	}

	/* Product and revision IDs */
	hdmi->version = (FUNC21(hdmi, HDMI_DESIGN_ID) << 8)
		      | (FUNC21(hdmi, HDMI_REVISION_ID) << 0);
	prod_id0 = FUNC21(hdmi, HDMI_PRODUCT_ID0);
	prod_id1 = FUNC21(hdmi, HDMI_PRODUCT_ID1);

	if (prod_id0 != HDMI_PRODUCT_ID0_HDMI_TX ||
	    (prod_id1 & ~HDMI_PRODUCT_ID1_HDCP) != HDMI_PRODUCT_ID1_HDMI_TX) {
		FUNC7(dev, "Unsupported HDMI controller (%04x:%02x:%02x)\n",
			hdmi->version, prod_id0, prod_id1);
		ret = -ENODEV;
		goto err_iahb;
	}

	ret = FUNC17(hdmi);
	if (ret < 0)
		goto err_iahb;

	FUNC8(dev, "Detected HDMI TX controller v%x.%03x %s HDCP (%s)\n",
		 hdmi->version >> 12, hdmi->version & 0xfff,
		 prod_id1 & HDMI_PRODUCT_ID1_HDCP ? "with" : "without",
		 hdmi->phy.name);

	FUNC19(hdmi);

	irq = FUNC32(pdev, 0);
	if (irq < 0) {
		ret = irq;
		goto err_iahb;
	}

	ret = FUNC16(dev, irq, dw_hdmi_hardirq,
					dw_hdmi_irq, IRQF_SHARED,
					FUNC9(dev), hdmi);
	if (ret)
		goto err_iahb;

	/*
	 * To prevent overflows in HDMI_IH_FC_STAT2, set the clk regenerator
	 * N and cts values before enabling phy
	 */
	FUNC20(hdmi);

	/* If DDC bus is not specified, try to register HDMI I2C bus */
	if (!hdmi->ddc) {
		/* Look for (optional) stuff related to unwedging */
		hdmi->pinctrl = FUNC14(dev);
		if (!FUNC2(hdmi->pinctrl)) {
			hdmi->unwedge_state =
				FUNC30(hdmi->pinctrl, "unwedge");
			hdmi->default_state =
				FUNC30(hdmi->pinctrl, "default");

			if (FUNC2(hdmi->default_state) ||
			    FUNC2(hdmi->unwedge_state)) {
				if (!FUNC2(hdmi->unwedge_state))
					FUNC10(dev,
						 "Unwedge requires default pinctrl\n");
				hdmi->default_state = NULL;
				hdmi->unwedge_state = NULL;
			}
		}

		hdmi->ddc = FUNC18(hdmi);
		if (FUNC2(hdmi->ddc))
			hdmi->ddc = NULL;
	}

	hdmi->bridge.driver_private = hdmi;
	hdmi->bridge.funcs = &dw_hdmi_bridge_funcs;
#ifdef CONFIG_OF
	hdmi->bridge.of_node = pdev->dev.of_node;
#endif

	FUNC24(&pdevinfo, 0, sizeof(pdevinfo));
	pdevinfo.parent = dev;
	pdevinfo.id = PLATFORM_DEVID_AUTO;

	config0 = FUNC21(hdmi, HDMI_CONFIG0_ID);
	config3 = FUNC21(hdmi, HDMI_CONFIG3_ID);

	if (iores && config3 & HDMI_CONFIG3_AHBAUDDMA) {
		struct dw_hdmi_audio_data audio;

		audio.phys = iores->start;
		audio.base = hdmi->regs;
		audio.irq = irq;
		audio.hdmi = hdmi;
		audio.eld = hdmi->connector.eld;
		hdmi->enable_audio = dw_hdmi_ahb_audio_enable;
		hdmi->disable_audio = dw_hdmi_ahb_audio_disable;

		pdevinfo.name = "dw-hdmi-ahb-audio";
		pdevinfo.data = &audio;
		pdevinfo.size_data = sizeof(audio);
		pdevinfo.dma_mask = FUNC0(32);
		hdmi->audio = FUNC31(&pdevinfo);
	} else if (config0 & HDMI_CONFIG0_I2S) {
		struct dw_hdmi_i2s_audio_data audio;

		audio.hdmi	= hdmi;
		audio.eld	= hdmi->connector.eld;
		audio.write	= hdmi_writeb;
		audio.read	= hdmi_readb;
		hdmi->enable_audio = dw_hdmi_i2s_audio_enable;
		hdmi->disable_audio = dw_hdmi_i2s_audio_disable;

		pdevinfo.name = "dw-hdmi-i2s-audio";
		pdevinfo.data = &audio;
		pdevinfo.size_data = sizeof(audio);
		pdevinfo.dma_mask = FUNC0(32);
		hdmi->audio = FUNC31(&pdevinfo);
	}

	if (config0 & HDMI_CONFIG0_CEC) {
		cec.hdmi = hdmi;
		cec.ops = &dw_hdmi_cec_ops;
		cec.irq = irq;

		pdevinfo.name = "dw-hdmi-cec";
		pdevinfo.data = &cec;
		pdevinfo.size_data = sizeof(cec);
		pdevinfo.dma_mask = 0;

		hdmi->cec = FUNC31(&pdevinfo);
	}

	return hdmi;

err_iahb:
	if (hdmi->i2c) {
		FUNC22(&hdmi->i2c->adap);
		hdmi->ddc = NULL;
	}

	FUNC4(hdmi->iahb_clk);
	if (hdmi->cec_clk)
		FUNC4(hdmi->cec_clk);
err_isfr:
	FUNC4(hdmi->isfr_clk);
err_res:
	FUNC23(hdmi->ddc);

	return FUNC1(ret);
}