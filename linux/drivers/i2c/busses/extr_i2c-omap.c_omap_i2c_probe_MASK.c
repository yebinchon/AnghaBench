#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct resource {int dummy; } ;
struct TYPE_20__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; int /*<<< orphan*/  id; int /*<<< orphan*/  name; } ;
struct TYPE_19__ {struct device_node* of_node; TYPE_2__* parent; } ;
struct i2c_adapter {int /*<<< orphan*/  nr; int /*<<< orphan*/ * bus_recovery_info; TYPE_1__ dev; int /*<<< orphan*/ * quirks; int /*<<< orphan*/ * algo; int /*<<< orphan*/  name; int /*<<< orphan*/  class; int /*<<< orphan*/  owner; } ;
struct omap_i2c_dev {int flags; int speed; int irq; int reg_shift; int scheme; int rev; int fifo_size; int b_hw; int latency; TYPE_2__* dev; struct i2c_adapter adapter; int /*<<< orphan*/ * set_mpu_wkup_lat; int /*<<< orphan*/  errata; int /*<<< orphan*/ * regs; scalar_t__ base; int /*<<< orphan*/  cmd_complete; } ;
struct omap_i2c_bus_platform_data {int flags; int clkrate; int /*<<< orphan*/ * set_mpu_wkup_lat; } ;
struct of_device_id {struct omap_i2c_bus_platform_data* data; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_CLASS_DEPRECATED ; 
 int /*<<< orphan*/  I2C_OMAP_ERRATA_I207 ; 
 int /*<<< orphan*/  I2C_OMAP_ERRATA_I462 ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int IRQF_NO_SUSPEND ; 
 int IRQF_ONESHOT ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  OMAP_I2C_BUFSTAT_REG ; 
 int /*<<< orphan*/  OMAP_I2C_CON_REG ; 
 int OMAP_I2C_FLAG_BUS_SHIFT__SHIFT ; 
 int OMAP_I2C_FLAG_NO_FIFO ; 
 int /*<<< orphan*/  OMAP_I2C_IP_V2_REVNB_LO ; 
 scalar_t__ OMAP_I2C_OMAP1_REV_2 ; 
 int /*<<< orphan*/  OMAP_I2C_PM_TIMEOUT ; 
 scalar_t__ OMAP_I2C_REV_ON_2430 ; 
 scalar_t__ OMAP_I2C_REV_ON_3430_3530 ; 
 scalar_t__ OMAP_I2C_REV_ON_3630 ; 
 scalar_t__ OMAP_I2C_REV_ON_4430_PLUS ; 
 int /*<<< orphan*/  OMAP_I2C_REV_REG ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
#define  OMAP_I2C_SCHEME_0 129 
#define  OMAP_I2C_SCHEME_1 128 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*,...) ; 
 struct omap_i2c_bus_platform_data* FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,char*,int /*<<< orphan*/ ,int,int,int) ; 
 scalar_t__ FUNC9 (TYPE_2__*,struct resource*) ; 
 struct omap_i2c_dev* FUNC10 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_2__*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct omap_i2c_dev*) ; 
 int FUNC12 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct omap_i2c_dev*) ; 
 int FUNC13 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC14 (struct i2c_adapter*,struct omap_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 struct of_device_id* FUNC16 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct device_node*,char*,int*) ; 
 int /*<<< orphan*/  omap_i2c_algo ; 
 int /*<<< orphan*/  omap_i2c_bus_recovery_info ; 
 int /*<<< orphan*/  FUNC19 (struct omap_i2c_dev*) ; 
 int /*<<< orphan*/  omap_i2c_isr ; 
 int /*<<< orphan*/  omap_i2c_isr_thread ; 
 int /*<<< orphan*/  omap_i2c_of_match ; 
 int /*<<< orphan*/  omap_i2c_omap1_isr ; 
 int /*<<< orphan*/  omap_i2c_quirks ; 
 int FUNC20 (struct omap_i2c_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct omap_i2c_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC22 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC23 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct platform_device*,struct omap_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_2__*) ; 
 int FUNC28 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC31 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC32 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (TYPE_2__*) ; 
 int FUNC34 (scalar_t__) ; 
 scalar_t__ reg_map_ip_v1 ; 
 scalar_t__ reg_map_ip_v2 ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC36(struct platform_device *pdev)
{
	struct omap_i2c_dev	*omap;
	struct i2c_adapter	*adap;
	struct resource		*mem;
	const struct omap_i2c_bus_platform_data *pdata =
		FUNC7(&pdev->dev);
	struct device_node	*node = pdev->dev.of_node;
	const struct of_device_id *match;
	int irq;
	int r;
	u32 rev;
	u16 minor, major;

	irq = FUNC22(pdev, 0);
	if (irq < 0) {
		FUNC6(&pdev->dev, "no irq resource?\n");
		return irq;
	}

	omap = FUNC10(&pdev->dev, sizeof(struct omap_i2c_dev), GFP_KERNEL);
	if (!omap)
		return -ENOMEM;

	mem = FUNC23(pdev, IORESOURCE_MEM, 0);
	omap->base = FUNC9(&pdev->dev, mem);
	if (FUNC0(omap->base))
		return FUNC5(omap->base);

	match = FUNC16(FUNC17(omap_i2c_of_match), &pdev->dev);
	if (match) {
		u32 freq = 100000; /* default to 100000 Hz */

		pdata = match->data;
		omap->flags = pdata->flags;

		FUNC18(node, "clock-frequency", &freq);
		/* convert DT freq value in Hz into kHz for speed */
		omap->speed = freq / 1000;
	} else if (pdata != NULL) {
		omap->speed = pdata->clkrate;
		omap->flags = pdata->flags;
		omap->set_mpu_wkup_lat = pdata->set_mpu_wkup_lat;
	}

	omap->dev = &pdev->dev;
	omap->irq = irq;

	FUNC24(pdev, omap);
	FUNC15(&omap->cmd_complete);

	omap->reg_shift = (omap->flags >> OMAP_I2C_FLAG_BUS_SHIFT__SHIFT) & 3;

	FUNC27(omap->dev);
	FUNC32(omap->dev, OMAP_I2C_PM_TIMEOUT);
	FUNC33(omap->dev);

	r = FUNC28(omap->dev);
	if (r < 0)
		goto err_free_mem;

	/*
	 * Read the Rev hi bit-[15:14] ie scheme this is 1 indicates ver2.
	 * On omap1/3/2 Offset 4 is IE Reg the bit [15:14] is 0 at reset.
	 * Also since the omap_i2c_read_reg uses reg_map_ip_* a
	 * readw_relaxed is done.
	 */
	rev = FUNC34(omap->base + 0x04);

	omap->scheme = FUNC4(rev);
	switch (omap->scheme) {
	case OMAP_I2C_SCHEME_0:
		omap->regs = (u8 *)reg_map_ip_v1;
		omap->rev = FUNC20(omap, OMAP_I2C_REV_REG);
		minor = FUNC1(omap->rev);
		major = FUNC1(omap->rev);
		break;
	case OMAP_I2C_SCHEME_1:
		/* FALLTHROUGH */
	default:
		omap->regs = (u8 *)reg_map_ip_v2;
		rev = (rev << 16) |
			FUNC20(omap, OMAP_I2C_IP_V2_REVNB_LO);
		minor = FUNC3(rev);
		major = FUNC2(rev);
		omap->rev = rev;
	}

	omap->errata = 0;

	if (omap->rev >= OMAP_I2C_REV_ON_2430 &&
			omap->rev < OMAP_I2C_REV_ON_4430_PLUS)
		omap->errata |= I2C_OMAP_ERRATA_I207;

	if (omap->rev <= OMAP_I2C_REV_ON_3430_3530)
		omap->errata |= I2C_OMAP_ERRATA_I462;

	if (!(omap->flags & OMAP_I2C_FLAG_NO_FIFO)) {
		u16 s;

		/* Set up the fifo size - Get total size */
		s = (FUNC20(omap, OMAP_I2C_BUFSTAT_REG) >> 14) & 0x3;
		omap->fifo_size = 0x8 << s;

		/*
		 * Set up notification threshold as half the total available
		 * size. This is to ensure that we can handle the status on int
		 * call back latencies.
		 */

		omap->fifo_size = (omap->fifo_size / 2);

		if (omap->rev < OMAP_I2C_REV_ON_3630)
			omap->b_hw = 1; /* Enable hardware fixes */

		/* calculate wakeup latency constraint for MPU */
		if (omap->set_mpu_wkup_lat != NULL)
			omap->latency = (1000000 * omap->fifo_size) /
				       (1000 * omap->speed / 8);
	}

	/* reset ASAP, clearing any IRQs */
	FUNC19(omap);

	if (omap->rev < OMAP_I2C_OMAP1_REV_2)
		r = FUNC11(&pdev->dev, omap->irq, omap_i2c_omap1_isr,
				IRQF_NO_SUSPEND, pdev->name, omap);
	else
		r = FUNC12(&pdev->dev, omap->irq,
				omap_i2c_isr, omap_i2c_isr_thread,
				IRQF_NO_SUSPEND | IRQF_ONESHOT,
				pdev->name, omap);

	if (r) {
		FUNC6(omap->dev, "failure requesting irq %i\n", omap->irq);
		goto err_unuse_clocks;
	}

	adap = &omap->adapter;
	FUNC14(adap, omap);
	adap->owner = THIS_MODULE;
	adap->class = I2C_CLASS_DEPRECATED;
	FUNC35(adap->name, "OMAP I2C adapter", sizeof(adap->name));
	adap->algo = &omap_i2c_algo;
	adap->quirks = &omap_i2c_quirks;
	adap->dev.parent = &pdev->dev;
	adap->dev.of_node = pdev->dev.of_node;
	adap->bus_recovery_info = &omap_i2c_bus_recovery_info;

	/* i2c device drivers may be active on return from add_adapter() */
	adap->nr = pdev->id;
	r = FUNC13(adap);
	if (r)
		goto err_unuse_clocks;

	FUNC8(omap->dev, "bus %d rev%d.%d at %d kHz\n", adap->nr,
		 major, minor, omap->speed);

	FUNC29(omap->dev);
	FUNC30(omap->dev);

	return 0;

err_unuse_clocks:
	FUNC21(omap, OMAP_I2C_CON_REG, 0);
	FUNC26(omap->dev);
	FUNC31(omap->dev);
	FUNC25(&pdev->dev);
err_free_mem:

	return r;
}