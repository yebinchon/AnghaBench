#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct TYPE_14__ {struct device_node* of_node; } ;
struct platform_device {TYPE_6__ dev; } ;
struct TYPE_12__ {struct device_node* of_node; TYPE_6__* parent; } ;
struct TYPE_13__ {int retries; TYPE_2__ dev; int /*<<< orphan*/ * bus_recovery_info; int /*<<< orphan*/  timeout; } ;
struct TYPE_11__ {int sw_twsi; int twsi_int; int sw_twsi_ext; } ;
struct octeon_i2c {int irq; int hlc_irq; int broken_irq_check; TYPE_6__* dev; TYPE_3__ adap; void* hlc_int_disable; int /*<<< orphan*/  hlc_int_enable; void* int_disable; int /*<<< orphan*/  int_enable; int /*<<< orphan*/  queue; int /*<<< orphan*/  sys_freq; int /*<<< orphan*/  twsi_freq; int /*<<< orphan*/  twsi_base; TYPE_1__ roff; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQ_NOAUTOEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OCTEON_CN38XX ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,struct resource*) ; 
 struct octeon_i2c* FUNC6 (TYPE_6__*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_6__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct octeon_i2c*) ; 
 int FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,struct octeon_i2c*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 void* octeon_i2c_hlc_int_disable78 ; 
 int /*<<< orphan*/  octeon_i2c_hlc_int_enable ; 
 int /*<<< orphan*/  octeon_i2c_hlc_int_enable78 ; 
 int /*<<< orphan*/  octeon_i2c_hlc_isr78 ; 
 int FUNC14 (struct octeon_i2c*) ; 
 void* octeon_i2c_int_disable ; 
 void* octeon_i2c_int_disable78 ; 
 int /*<<< orphan*/  octeon_i2c_int_enable ; 
 int /*<<< orphan*/  octeon_i2c_int_enable78 ; 
 int /*<<< orphan*/  octeon_i2c_isr ; 
 TYPE_3__ octeon_i2c_ops ; 
 int /*<<< orphan*/  octeon_i2c_recovery_info ; 
 int /*<<< orphan*/  FUNC15 (struct octeon_i2c*) ; 
 int FUNC16 (struct device_node*,char*) ; 
 scalar_t__ FUNC17 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int FUNC18 (struct platform_device*,int) ; 
 struct resource* FUNC19 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct platform_device*,struct octeon_i2c*) ; 

__attribute__((used)) static int FUNC21(struct platform_device *pdev)
{
	struct device_node *node = pdev->dev.of_node;
	int irq, result = 0, hlc_irq = 0;
	struct resource *res_mem;
	struct octeon_i2c *i2c;
	bool cn78xx_style;

	cn78xx_style = FUNC16(node, "cavium,octeon-7890-twsi");
	if (cn78xx_style) {
		hlc_irq = FUNC18(pdev, 0);
		if (hlc_irq < 0)
			return hlc_irq;

		irq = FUNC18(pdev, 2);
		if (irq < 0)
			return irq;
	} else {
		/* All adaptors have an irq.  */
		irq = FUNC18(pdev, 0);
		if (irq < 0)
			return irq;
	}

	i2c = FUNC6(&pdev->dev, sizeof(*i2c), GFP_KERNEL);
	if (!i2c) {
		result = -ENOMEM;
		goto out;
	}
	i2c->dev = &pdev->dev;

	i2c->roff.sw_twsi = 0x00;
	i2c->roff.twsi_int = 0x10;
	i2c->roff.sw_twsi_ext = 0x18;

	res_mem = FUNC19(pdev, IORESOURCE_MEM, 0);
	i2c->twsi_base = FUNC5(&pdev->dev, res_mem);
	if (FUNC0(i2c->twsi_base)) {
		result = FUNC2(i2c->twsi_base);
		goto out;
	}

	/*
	 * "clock-rate" is a legacy binding, the official binding is
	 * "clock-frequency".  Try the official one first and then
	 * fall back if it doesn't exist.
	 */
	if (FUNC17(node, "clock-frequency", &i2c->twsi_freq) &&
	    FUNC17(node, "clock-rate", &i2c->twsi_freq)) {
		FUNC3(i2c->dev,
			"no I2C 'clock-rate' or 'clock-frequency' property\n");
		result = -ENXIO;
		goto out;
	}

	i2c->sys_freq = FUNC13();

	FUNC10(&i2c->queue);

	i2c->irq = irq;

	if (cn78xx_style) {
		i2c->hlc_irq = hlc_irq;

		i2c->int_enable = octeon_i2c_int_enable78;
		i2c->int_disable = octeon_i2c_int_disable78;
		i2c->hlc_int_enable = octeon_i2c_hlc_int_enable78;
		i2c->hlc_int_disable = octeon_i2c_hlc_int_disable78;

		FUNC11(i2c->irq, IRQ_NOAUTOEN);
		FUNC11(i2c->hlc_irq, IRQ_NOAUTOEN);

		result = FUNC7(&pdev->dev, i2c->hlc_irq,
					  octeon_i2c_hlc_isr78, 0,
					  DRV_NAME, i2c);
		if (result < 0) {
			FUNC3(i2c->dev, "failed to attach interrupt\n");
			goto out;
		}
	} else {
		i2c->int_enable = octeon_i2c_int_enable;
		i2c->int_disable = octeon_i2c_int_disable;
		i2c->hlc_int_enable = octeon_i2c_hlc_int_enable;
		i2c->hlc_int_disable = octeon_i2c_int_disable;
	}

	result = FUNC7(&pdev->dev, i2c->irq,
				  octeon_i2c_isr, 0, DRV_NAME, i2c);
	if (result < 0) {
		FUNC3(i2c->dev, "failed to attach interrupt\n");
		goto out;
	}

	if (FUNC1(OCTEON_CN38XX))
		i2c->broken_irq_check = true;

	result = FUNC14(i2c);
	if (result) {
		FUNC3(i2c->dev, "init low level failed\n");
		goto  out;
	}

	FUNC15(i2c);

	i2c->adap = octeon_i2c_ops;
	i2c->adap.timeout = FUNC12(2);
	i2c->adap.retries = 5;
	i2c->adap.bus_recovery_info = &octeon_i2c_recovery_info;
	i2c->adap.dev.parent = &pdev->dev;
	i2c->adap.dev.of_node = node;
	FUNC9(&i2c->adap, i2c);
	FUNC20(pdev, i2c);

	result = FUNC8(&i2c->adap);
	if (result < 0)
		goto out;
	FUNC4(i2c->dev, "probed\n");
	return 0;

out:
	return result;
}