#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_8__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_14__ {int /*<<< orphan*/  of_node; TYPE_3__* parent; } ;
struct TYPE_12__ {int retries; TYPE_8__ dev; struct pxa_i2c* algo_data; int /*<<< orphan*/ * algo; int /*<<< orphan*/  name; int /*<<< orphan*/  class; int /*<<< orphan*/  owner; int /*<<< orphan*/  nr; } ;
struct pxa_i2c {int irq; int highmode_enter; scalar_t__ clk; TYPE_2__ adap; int /*<<< orphan*/  slave_addr; scalar_t__ use_pio; scalar_t__ rate; scalar_t__ high_mode; int /*<<< orphan*/  slave; int /*<<< orphan*/  iosize; int /*<<< orphan*/  iobase; scalar_t__ reg_base; scalar_t__ reg_iwcr; scalar_t__ reg_ilcr; scalar_t__ reg_isar; int /*<<< orphan*/  hs_mask; int /*<<< orphan*/  fm_mask; scalar_t__ reg_isr; scalar_t__ reg_icr; scalar_t__ reg_idbr; scalar_t__ reg_ibmr; int /*<<< orphan*/  wait; int /*<<< orphan*/  lock; } ;
struct TYPE_13__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_3__ dev; int /*<<< orphan*/  id; } ;
struct i2c_pxa_platform_data {int /*<<< orphan*/  class; int /*<<< orphan*/  slave; int /*<<< orphan*/  slave_addr; } ;
typedef  enum pxa_i2c_types { ____Placeholder_pxa_i2c_types } pxa_i2c_types ;
struct TYPE_11__ {scalar_t__ iwcr; scalar_t__ ilcr; scalar_t__ isar; scalar_t__ hs; scalar_t__ fm; scalar_t__ isr; scalar_t__ icr; scalar_t__ idbr; scalar_t__ ibmr; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_PXA_SLAVE_ADDR ; 
 int /*<<< orphan*/  ICR_FM ; 
 int /*<<< orphan*/  ICR_HS ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int IRQF_NO_SUSPEND ; 
 int IRQF_SHARED ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int REGS_CE4100 ; 
 int REGS_PXA910 ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,char*,int) ; 
 struct i2c_pxa_platform_data* FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_8__*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 scalar_t__ FUNC10 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (TYPE_3__*,struct resource*) ; 
 struct pxa_i2c* FUNC12 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int FUNC13 (TYPE_3__*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct pxa_i2c*) ; 
 int FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  i2c_pxa_algorithm ; 
 int /*<<< orphan*/  i2c_pxa_handler ; 
 int /*<<< orphan*/  i2c_pxa_pio_algorithm ; 
 int FUNC15 (struct platform_device*,struct pxa_i2c*,int*) ; 
 int FUNC16 (struct platform_device*,struct pxa_i2c*,int*) ; 
 int /*<<< orphan*/  FUNC17 (struct pxa_i2c*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int FUNC19 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC20 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct platform_device*,struct pxa_i2c*) ; 
 int /*<<< orphan*/  FUNC22 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* pxa_reg_layout ; 
 int /*<<< orphan*/  FUNC24 (struct resource*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC27(struct platform_device *dev)
{
	struct i2c_pxa_platform_data *plat = FUNC7(&dev->dev);
	enum pxa_i2c_types i2c_type;
	struct pxa_i2c *i2c;
	struct resource *res = NULL;
	int ret, irq;

	i2c = FUNC12(&dev->dev, sizeof(struct pxa_i2c), GFP_KERNEL);
	if (!i2c)
		return -ENOMEM;

	res = FUNC20(dev, IORESOURCE_MEM, 0);
	i2c->reg_base = FUNC11(&dev->dev, res);
	if (FUNC0(i2c->reg_base))
		return FUNC1(i2c->reg_base);

	irq = FUNC19(dev, 0);
	if (irq < 0) {
		FUNC6(&dev->dev, "no irq resource: %d\n", irq);
		return irq;
	}

	/* Default adapter num to device id; i2c_pxa_probe_dt can override. */
	i2c->adap.nr = dev->id;

	ret = FUNC15(dev, i2c, &i2c_type);
	if (ret > 0)
		ret = FUNC16(dev, i2c, &i2c_type);
	if (ret < 0)
		return ret;

	i2c->adap.owner   = THIS_MODULE;
	i2c->adap.retries = 5;

	FUNC25(&i2c->lock);
	FUNC18(&i2c->wait);

	FUNC26(i2c->adap.name, "pxa_i2c-i2c", sizeof(i2c->adap.name));

	i2c->clk = FUNC10(&dev->dev, NULL);
	if (FUNC0(i2c->clk)) {
		FUNC6(&dev->dev, "failed to get the clk: %ld\n", FUNC1(i2c->clk));
		return FUNC1(i2c->clk);
	}

	i2c->reg_ibmr = i2c->reg_base + pxa_reg_layout[i2c_type].ibmr;
	i2c->reg_idbr = i2c->reg_base + pxa_reg_layout[i2c_type].idbr;
	i2c->reg_icr = i2c->reg_base + pxa_reg_layout[i2c_type].icr;
	i2c->reg_isr = i2c->reg_base + pxa_reg_layout[i2c_type].isr;
	i2c->fm_mask = pxa_reg_layout[i2c_type].fm ? : ICR_FM;
	i2c->hs_mask = pxa_reg_layout[i2c_type].hs ? : ICR_HS;

	if (i2c_type != REGS_CE4100)
		i2c->reg_isar = i2c->reg_base + pxa_reg_layout[i2c_type].isar;

	if (i2c_type == REGS_PXA910) {
		i2c->reg_ilcr = i2c->reg_base + pxa_reg_layout[i2c_type].ilcr;
		i2c->reg_iwcr = i2c->reg_base + pxa_reg_layout[i2c_type].iwcr;
	}

	i2c->iobase = res->start;
	i2c->iosize = FUNC24(res);

	i2c->irq = irq;

	i2c->slave_addr = I2C_PXA_SLAVE_ADDR;
	i2c->highmode_enter = false;

	if (plat) {
#ifdef CONFIG_I2C_PXA_SLAVE
		i2c->slave_addr = plat->slave_addr;
		i2c->slave = plat->slave;
#endif
		i2c->adap.class = plat->class;
	}

	if (i2c->high_mode) {
		if (i2c->rate) {
			FUNC5(i2c->clk, i2c->rate);
			FUNC22("i2c: <%s> set rate to %ld\n",
				i2c->adap.name, FUNC3(i2c->clk));
		} else
			FUNC23("i2c: <%s> clock rate not set\n",
				i2c->adap.name);
	}

	FUNC4(i2c->clk);

	if (i2c->use_pio) {
		i2c->adap.algo = &i2c_pxa_pio_algorithm;
	} else {
		i2c->adap.algo = &i2c_pxa_algorithm;
		ret = FUNC13(&dev->dev, irq, i2c_pxa_handler,
				IRQF_SHARED | IRQF_NO_SUSPEND,
				FUNC9(&dev->dev), i2c);
		if (ret) {
			FUNC6(&dev->dev, "failed to request irq: %d\n", ret);
			goto ereqirq;
		}
	}

	FUNC17(i2c);

	i2c->adap.algo_data = i2c;
	i2c->adap.dev.parent = &dev->dev;
#ifdef CONFIG_OF
	i2c->adap.dev.of_node = dev->dev.of_node;
#endif

	ret = FUNC14(&i2c->adap);
	if (ret < 0)
		goto ereqirq;

	FUNC21(dev, i2c);

#ifdef CONFIG_I2C_PXA_SLAVE
	dev_info(&i2c->adap.dev, " PXA I2C adapter, slave address %d\n",
		i2c->slave_addr);
#else
	FUNC8(&i2c->adap.dev, " PXA I2C adapter\n");
#endif
	return 0;

ereqirq:
	FUNC2(i2c->clk);
	return ret;
}