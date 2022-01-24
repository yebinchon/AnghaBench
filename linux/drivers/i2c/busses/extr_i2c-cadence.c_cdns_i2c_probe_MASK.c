#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_8__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_16__ ;

/* Type definitions */
struct resource {scalar_t__ start; } ;
struct TYPE_19__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct of_device_id {struct cdns_platform_data* data; } ;
struct cdns_platform_data {int /*<<< orphan*/  quirks; } ;
struct TYPE_18__ {TYPE_2__* parent; int /*<<< orphan*/  of_node; } ;
struct TYPE_20__ {int retries; int /*<<< orphan*/  name; TYPE_1__ dev; struct cdns_i2c* algo_data; int /*<<< orphan*/  timeout; int /*<<< orphan*/ * algo; int /*<<< orphan*/  owner; } ;
struct TYPE_17__ {int /*<<< orphan*/  notifier_call; } ;
struct cdns_i2c {int irq; int i2c_clk; int /*<<< orphan*/  clk; TYPE_8__ adap; int /*<<< orphan*/  input_clk; TYPE_16__ clk_rate_change_nb; TYPE_2__* dev; int /*<<< orphan*/  xfer_done; int /*<<< orphan*/  membase; int /*<<< orphan*/  quirks; } ;

/* Variables and functions */
 int CDNS_I2C_CR_ACK_EN ; 
 int CDNS_I2C_CR_MS ; 
 int CDNS_I2C_CR_NEA ; 
 int /*<<< orphan*/  CDNS_I2C_CR_OFFSET ; 
 int CDNS_I2C_SPEED_DEFAULT ; 
 int CDNS_I2C_SPEED_MAX ; 
 int /*<<< orphan*/  CDNS_I2C_TIMEOUT ; 
 int CDNS_I2C_TIMEOUT_MAX ; 
 int /*<<< orphan*/  CDNS_I2C_TIME_OUT_OFFSET ; 
 int /*<<< orphan*/  CNDS_I2C_PM_TIMEOUT ; 
 int /*<<< orphan*/  DRIVER_NAME ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  cdns_i2c_algo ; 
 int /*<<< orphan*/  cdns_i2c_clk_notifier_cb ; 
 int /*<<< orphan*/  cdns_i2c_isr ; 
 int /*<<< orphan*/  cdns_i2c_of_match ; 
 int FUNC2 (int /*<<< orphan*/ ,struct cdns_i2c*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,TYPE_16__*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,char*,int,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,struct resource*) ; 
 struct cdns_i2c* FUNC13 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int FUNC14 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cdns_i2c*) ; 
 int FUNC15 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 struct of_device_id* FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC18 (int /*<<< orphan*/ ,char*,int*) ; 
 int FUNC19 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC20 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct platform_device*,struct cdns_i2c*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int,char*,unsigned long) ; 

__attribute__((used)) static int FUNC29(struct platform_device *pdev)
{
	struct resource *r_mem;
	struct cdns_i2c *id;
	int ret;
	const struct of_device_id *match;

	id = FUNC13(&pdev->dev, sizeof(*id), GFP_KERNEL);
	if (!id)
		return -ENOMEM;

	id->dev = &pdev->dev;
	FUNC21(pdev, id);

	match = FUNC17(cdns_i2c_of_match, pdev->dev.of_node);
	if (match && match->data) {
		const struct cdns_platform_data *data = match->data;
		id->quirks = data->quirks;
	}

	r_mem = FUNC20(pdev, IORESOURCE_MEM, 0);
	id->membase = FUNC12(&pdev->dev, r_mem);
	if (FUNC0(id->membase))
		return FUNC1(id->membase);

	id->irq = FUNC19(pdev, 0);

	id->adap.owner = THIS_MODULE;
	id->adap.dev.of_node = pdev->dev.of_node;
	id->adap.algo = &cdns_i2c_algo;
	id->adap.timeout = CDNS_I2C_TIMEOUT;
	id->adap.retries = 3;		/* Default retry value. */
	id->adap.algo_data = id;
	id->adap.dev.parent = &pdev->dev;
	FUNC16(&id->xfer_done);
	FUNC28(id->adap.name, sizeof(id->adap.name),
		 "Cadence I2C at %08lx", (unsigned long)r_mem->start);

	id->clk = FUNC11(&pdev->dev, NULL);
	if (FUNC0(id->clk)) {
		FUNC8(&pdev->dev, "input clock not found.\n");
		return FUNC1(id->clk);
	}
	ret = FUNC7(id->clk);
	if (ret)
		FUNC8(&pdev->dev, "Unable to enable clock.\n");

	FUNC23(id->dev);
	FUNC25(id->dev, CNDS_I2C_PM_TIMEOUT);
	FUNC27(id->dev);
	FUNC24(id->dev);

	id->clk_rate_change_nb.notifier_call = cdns_i2c_clk_notifier_cb;
	if (FUNC6(id->clk, &id->clk_rate_change_nb))
		FUNC10(&pdev->dev, "Unable to register clock notifier.\n");
	id->input_clk = FUNC5(id->clk);

	ret = FUNC18(pdev->dev.of_node, "clock-frequency",
			&id->i2c_clk);
	if (ret || (id->i2c_clk > CDNS_I2C_SPEED_MAX))
		id->i2c_clk = CDNS_I2C_SPEED_DEFAULT;

	FUNC3(CDNS_I2C_CR_ACK_EN | CDNS_I2C_CR_NEA | CDNS_I2C_CR_MS,
			  CDNS_I2C_CR_OFFSET);

	ret = FUNC2(id->input_clk, id);
	if (ret) {
		FUNC8(&pdev->dev, "invalid SCL clock: %u Hz\n", id->i2c_clk);
		ret = -EINVAL;
		goto err_clk_dis;
	}

	ret = FUNC14(&pdev->dev, id->irq, cdns_i2c_isr, 0,
				 DRIVER_NAME, id);
	if (ret) {
		FUNC8(&pdev->dev, "cannot get irq %d\n", id->irq);
		goto err_clk_dis;
	}

	/*
	 * Cadence I2C controller has a bug wherein it generates
	 * invalid read transaction after HW timeout in master receiver mode.
	 * HW timeout is not used by this driver and the interrupt is disabled.
	 * But the feature itself cannot be disabled. Hence maximum value
	 * is written to this register to reduce the chances of error.
	 */
	FUNC3(CDNS_I2C_TIMEOUT_MAX, CDNS_I2C_TIME_OUT_OFFSET);

	ret = FUNC15(&id->adap);
	if (ret < 0)
		goto err_clk_dis;

	FUNC9(&pdev->dev, "%u kHz mmio %08lx irq %d\n",
		 id->i2c_clk / 1000, (unsigned long)r_mem->start, id->irq);

	return 0;

err_clk_dis:
	FUNC4(id->clk);
	FUNC26(&pdev->dev);
	FUNC22(&pdev->dev);
	return ret;
}