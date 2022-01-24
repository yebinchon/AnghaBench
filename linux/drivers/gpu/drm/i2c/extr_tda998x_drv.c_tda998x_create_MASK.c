#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_6__ {int /*<<< orphan*/  of_node; int /*<<< orphan*/ * funcs; int /*<<< orphan*/  list; } ;
struct TYPE_4__ {unsigned long irq_flags; int /*<<< orphan*/  release; int /*<<< orphan*/  open; int /*<<< orphan*/  exit; int /*<<< orphan*/  init; struct tda998x_priv* data; struct device* parent; } ;
struct tda998x_priv {int vip_cntrl_0; int vip_cntrl_1; int vip_cntrl_2; int cec_addr; int current_page; int rev; TYPE_3__ bridge; scalar_t__* audio_port_enable; int /*<<< orphan*/  cec; TYPE_1__ cec_glue; int /*<<< orphan*/  cec_notify; int /*<<< orphan*/  wq_edid; struct i2c_client* hdmi; int /*<<< orphan*/  detect_work; int /*<<< orphan*/  edid_delay_timer; int /*<<< orphan*/  edid_delay_waitq; int /*<<< orphan*/  edid_mutex; int /*<<< orphan*/  audio_mutex; int /*<<< orphan*/  mutex; } ;
struct TYPE_5__ {struct device_node* of_node; } ;
struct i2c_client {int addr; int irq; TYPE_2__ dev; int /*<<< orphan*/  adapter; } ;
struct i2c_board_info {int addr; int irq; TYPE_1__* platform_data; int /*<<< orphan*/  type; } ;
struct device_node {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; scalar_t__ platform_data; } ;
typedef  int /*<<< orphan*/  cec_info ;

/* Variables and functions */
 size_t AUDIO_ROUTE_I2S ; 
 size_t AUDIO_ROUTE_SPDIF ; 
 int CEC_ENAMODS_EN_HDMI ; 
 int CEC_ENAMODS_EN_RXSENS ; 
 int CEC_FRO_IM_CLK_CTRL_GHOST_DIS ; 
 int CEC_FRO_IM_CLK_CTRL_IMCLK_SEL ; 
 int CEC_RXSHPDLEV_HPD ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_MASTER_DIS_MM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INT_FLAGS_2_EDID_BLK_RD ; 
 unsigned long IRQF_ONESHOT ; 
 unsigned long IRQF_SHARED ; 
 int /*<<< orphan*/  REG_CEC_ENAMODS ; 
 int /*<<< orphan*/  REG_CEC_FRO_IM_CLK_CTRL ; 
 int /*<<< orphan*/  REG_CEC_RXSHPDINT ; 
 int /*<<< orphan*/  REG_CEC_RXSHPDINTENA ; 
 int /*<<< orphan*/  REG_DDC_DISABLE ; 
 int /*<<< orphan*/  REG_I2C_MASTER ; 
 int /*<<< orphan*/  REG_INT_FLAGS_0 ; 
 int /*<<< orphan*/  REG_INT_FLAGS_1 ; 
 int /*<<< orphan*/  REG_INT_FLAGS_2 ; 
 int /*<<< orphan*/  REG_TX3 ; 
 int /*<<< orphan*/  REG_VERSION_LSB ; 
 int /*<<< orphan*/  REG_VERSION_MSB ; 
#define  TDA19988 131 
#define  TDA19989 130 
#define  TDA19989N2 129 
#define  TDA9989N2 128 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 int /*<<< orphan*/  FUNC9 (struct tda998x_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct tda998x_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct device*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC12 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC13 (struct device*,struct tda998x_priv*) ; 
 struct tda998x_priv* FUNC14 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,struct i2c_board_info*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 unsigned long FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct i2c_board_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int FUNC22 (struct device_node*,char*,int*) ; 
 int FUNC23 (struct tda998x_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct tda998x_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct tda998x_priv*,int /*<<< orphan*/ ,int) ; 
 int FUNC26 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long,char*,struct tda998x_priv*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC28 (struct tda998x_priv*,TYPE_2__*) ; 
 int /*<<< orphan*/  tda998x_bridge_funcs ; 
 int /*<<< orphan*/  tda998x_cec_hook_exit ; 
 int /*<<< orphan*/  tda998x_cec_hook_init ; 
 int /*<<< orphan*/  tda998x_cec_hook_open ; 
 int /*<<< orphan*/  tda998x_cec_hook_release ; 
 int /*<<< orphan*/  FUNC29 (struct device*) ; 
 int /*<<< orphan*/  tda998x_detect_work ; 
 int /*<<< orphan*/  tda998x_edid_delay_done ; 
 int FUNC30 (struct tda998x_priv*,struct device_node*) ; 
 int /*<<< orphan*/  tda998x_irq_thread ; 
 int /*<<< orphan*/  FUNC31 (struct tda998x_priv*) ; 
 int FUNC32 (struct tda998x_priv*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct i2c_client* FUNC34 (struct device*) ; 

__attribute__((used)) static int FUNC35(struct device *dev)
{
	struct i2c_client *client = FUNC34(dev);
	struct device_node *np = client->dev.of_node;
	struct i2c_board_info cec_info;
	struct tda998x_priv *priv;
	u32 video;
	int rev_lo, rev_hi, ret;

	priv = FUNC14(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	FUNC13(dev, priv);

	FUNC21(&priv->mutex);	/* protect the page access */
	FUNC21(&priv->audio_mutex); /* protect access from audio thread */
	FUNC21(&priv->edid_mutex);
	FUNC0(&priv->bridge.list);
	FUNC17(&priv->edid_delay_waitq);
	FUNC33(&priv->edid_delay_timer, tda998x_edid_delay_done, 0);
	FUNC1(&priv->detect_work, tda998x_detect_work);

	priv->vip_cntrl_0 = FUNC2(2) | FUNC3(3);
	priv->vip_cntrl_1 = FUNC4(0) | FUNC5(1);
	priv->vip_cntrl_2 = FUNC6(4) | FUNC7(5);

	/* CEC I2C address bound to TDA998x I2C addr by configuration pins */
	priv->cec_addr = 0x34 + (client->addr & 0x03);
	priv->current_page = 0xff;
	priv->hdmi = client;

	/* wake up the device: */
	FUNC10(priv, REG_CEC_ENAMODS,
			CEC_ENAMODS_EN_RXSENS | CEC_ENAMODS_EN_HDMI);

	FUNC31(priv);

	/* read version: */
	rev_lo = FUNC23(priv, REG_VERSION_LSB);
	if (rev_lo < 0) {
		FUNC11(dev, "failed to read version: %d\n", rev_lo);
		return rev_lo;
	}

	rev_hi = FUNC23(priv, REG_VERSION_MSB);
	if (rev_hi < 0) {
		FUNC11(dev, "failed to read version: %d\n", rev_hi);
		return rev_hi;
	}

	priv->rev = rev_lo | rev_hi << 8;

	/* mask off feature bits: */
	priv->rev &= ~0x30; /* not-hdcp and not-scalar bit */

	switch (priv->rev) {
	case TDA9989N2:
		FUNC12(dev, "found TDA9989 n2");
		break;
	case TDA19989:
		FUNC12(dev, "found TDA19989");
		break;
	case TDA19989N2:
		FUNC12(dev, "found TDA19989 n2");
		break;
	case TDA19988:
		FUNC12(dev, "found TDA19988");
		break;
	default:
		FUNC11(dev, "found unsupported device: %04x\n", priv->rev);
		return -ENXIO;
	}

	/* after reset, enable DDC: */
	FUNC25(priv, REG_DDC_DISABLE, 0x00);

	/* set clock on DDC channel: */
	FUNC25(priv, REG_TX3, 39);

	/* if necessary, disable multi-master: */
	if (priv->rev == TDA19989)
		FUNC24(priv, REG_I2C_MASTER, I2C_MASTER_DIS_MM);

	FUNC10(priv, REG_CEC_FRO_IM_CLK_CTRL,
			CEC_FRO_IM_CLK_CTRL_GHOST_DIS | CEC_FRO_IM_CLK_CTRL_IMCLK_SEL);

	/* ensure interrupts are disabled */
	FUNC10(priv, REG_CEC_RXSHPDINTENA, 0);

	/* clear pending interrupts */
	FUNC9(priv, REG_CEC_RXSHPDINT);
	FUNC23(priv, REG_INT_FLAGS_0);
	FUNC23(priv, REG_INT_FLAGS_1);
	FUNC23(priv, REG_INT_FLAGS_2);

	/* initialize the optional IRQ */
	if (client->irq) {
		unsigned long irq_flags;

		/* init read EDID waitqueue and HDP work */
		FUNC17(&priv->wq_edid);

		irq_flags =
			FUNC19(FUNC18(client->irq));

		priv->cec_glue.irq_flags = irq_flags;

		irq_flags |= IRQF_SHARED | IRQF_ONESHOT;
		ret = FUNC26(client->irq, NULL,
					   tda998x_irq_thread, irq_flags,
					   "tda998x", priv);
		if (ret) {
			FUNC11(dev, "failed to request IRQ#%u: %d\n",
				client->irq, ret);
			goto err_irq;
		}

		/* enable HPD irq */
		FUNC10(priv, REG_CEC_RXSHPDINTENA, CEC_RXSHPDLEV_HPD);
	}

	priv->cec_notify = FUNC8(dev);
	if (!priv->cec_notify) {
		ret = -ENOMEM;
		goto fail;
	}

	priv->cec_glue.parent = dev;
	priv->cec_glue.data = priv;
	priv->cec_glue.init = tda998x_cec_hook_init;
	priv->cec_glue.exit = tda998x_cec_hook_exit;
	priv->cec_glue.open = tda998x_cec_hook_open;
	priv->cec_glue.release = tda998x_cec_hook_release;

	/*
	 * Some TDA998x are actually two I2C devices merged onto one piece
	 * of silicon: TDA9989 and TDA19989 combine the HDMI transmitter
	 * with a slightly modified TDA9950 CEC device.  The CEC device
	 * is at the TDA9950 address, with the address pins strapped across
	 * to the TDA998x address pins.  Hence, it always has the same
	 * offset.
	 */
	FUNC20(&cec_info, 0, sizeof(cec_info));
	FUNC27(cec_info.type, "tda9950", sizeof(cec_info.type));
	cec_info.addr = priv->cec_addr;
	cec_info.platform_data = &priv->cec_glue;
	cec_info.irq = client->irq;

	priv->cec = FUNC16(client->adapter, &cec_info);
	if (!priv->cec) {
		ret = -ENODEV;
		goto fail;
	}

	/* enable EDID read irq: */
	FUNC24(priv, REG_INT_FLAGS_2, INT_FLAGS_2_EDID_BLK_RD);

	if (np) {
		/* get the device tree parameters */
		ret = FUNC22(np, "video-ports", &video);
		if (ret == 0) {
			priv->vip_cntrl_0 = video >> 16;
			priv->vip_cntrl_1 = video >> 8;
			priv->vip_cntrl_2 = video;
		}

		ret = FUNC30(priv, np);
		if (ret)
			goto fail;

		if (priv->audio_port_enable[AUDIO_ROUTE_I2S] ||
		    priv->audio_port_enable[AUDIO_ROUTE_SPDIF])
			FUNC28(priv, &client->dev);
	} else if (dev->platform_data) {
		ret = FUNC32(priv, dev->platform_data);
		if (ret)
			goto fail;
	}

	priv->bridge.funcs = &tda998x_bridge_funcs;
#ifdef CONFIG_OF
	priv->bridge.of_node = dev->of_node;
#endif

	FUNC15(&priv->bridge);

	return 0;

fail:
	FUNC29(dev);
err_irq:
	return ret;
}