#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  of_node; int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_6__ dev; } ;
struct intel_soc_pmic {int /*<<< orphan*/  regmap; } ;
struct i2c_board_info {char* type; int addr; char* dev_name; scalar_t__ irq; int /*<<< orphan*/ * platform_data; int /*<<< orphan*/  properties; } ;
struct TYPE_9__ {TYPE_6__* parent; } ;
struct TYPE_10__ {TYPE_1__ dev; int /*<<< orphan*/  name; int /*<<< orphan*/ * lock_ops; int /*<<< orphan*/ * algo; int /*<<< orphan*/  class; int /*<<< orphan*/  owner; } ;
struct cht_wc_i2c_adap {int /*<<< orphan*/  irq_domain; TYPE_2__ adapter; int /*<<< orphan*/  client; scalar_t__ client_irq; int /*<<< orphan*/  irqchip; int /*<<< orphan*/  irq_mask; int /*<<< orphan*/  regmap; int /*<<< orphan*/  old_irq_mask; int /*<<< orphan*/  irqchip_lock; int /*<<< orphan*/  adap_lock; int /*<<< orphan*/  wait; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHT_WC_EXTCHGRIRQ ; 
 int /*<<< orphan*/  CHT_WC_EXTCHGRIRQ_ADAP_IRQMASK ; 
 int /*<<< orphan*/  CHT_WC_EXTCHGRIRQ_MSK ; 
 int /*<<< orphan*/  CHT_WC_I2C_RDDATA ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_CLASS_HWMON ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  bq24190_pdata ; 
 int /*<<< orphan*/  bq24190_props ; 
 int /*<<< orphan*/  cht_wc_i2c_adap_algo ; 
 int /*<<< orphan*/  cht_wc_i2c_adap_lock_ops ; 
 int /*<<< orphan*/  cht_wc_i2c_adap_thread_handler ; 
 int /*<<< orphan*/  cht_wc_i2c_irq_chip ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*,char*) ; 
 struct intel_soc_pmic* FUNC2 (int /*<<< orphan*/ ) ; 
 struct cht_wc_i2c_adap* FUNC3 (TYPE_6__*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_6__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct cht_wc_i2c_adap*) ; 
 int /*<<< orphan*/  handle_simple_irq ; 
 int FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,struct i2c_board_info*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,struct cht_wc_i2c_adap*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  irq_domain_simple_ops ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,struct cht_wc_i2c_adap*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct platform_device*,struct cht_wc_i2c_adap*) ; 
 int FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC21(struct platform_device *pdev)
{
	struct intel_soc_pmic *pmic = FUNC2(pdev->dev.parent);
	struct cht_wc_i2c_adap *adap;
	struct i2c_board_info board_info = {
		.type = "bq24190",
		.addr = 0x6b,
		.dev_name = "bq24190",
		.properties = bq24190_props,
		.platform_data = &bq24190_pdata,
	};
	int ret, reg, irq;

	irq = FUNC16(pdev, 0);
	if (irq < 0) {
		FUNC1(&pdev->dev, "Error missing irq resource\n");
		return -EINVAL;
	}

	adap = FUNC3(&pdev->dev, sizeof(*adap), GFP_KERNEL);
	if (!adap)
		return -ENOMEM;

	FUNC9(&adap->wait);
	FUNC15(&adap->adap_lock);
	FUNC15(&adap->irqchip_lock);
	adap->irqchip = cht_wc_i2c_irq_chip;
	adap->regmap = pmic->regmap;
	adap->adapter.owner = THIS_MODULE;
	adap->adapter.class = I2C_CLASS_HWMON;
	adap->adapter.algo = &cht_wc_i2c_adap_algo;
	adap->adapter.lock_ops = &cht_wc_i2c_adap_lock_ops;
	FUNC20(adap->adapter.name, "PMIC I2C Adapter",
		sizeof(adap->adapter.name));
	adap->adapter.dev.parent = &pdev->dev;

	/* Clear and activate i2c-adapter interrupts, disable client IRQ */
	adap->old_irq_mask = adap->irq_mask = ~CHT_WC_EXTCHGRIRQ_ADAP_IRQMASK;

	ret = FUNC18(adap->regmap, CHT_WC_I2C_RDDATA, &reg);
	if (ret)
		return ret;

	ret = FUNC19(adap->regmap, CHT_WC_EXTCHGRIRQ, ~adap->irq_mask);
	if (ret)
		return ret;

	ret = FUNC19(adap->regmap, CHT_WC_EXTCHGRIRQ_MSK, adap->irq_mask);
	if (ret)
		return ret;

	/* Alloc and register client IRQ */
	adap->irq_domain = FUNC11(pdev->dev.of_node, 1,
						 &irq_domain_simple_ops, NULL);
	if (!adap->irq_domain)
		return -ENOMEM;

	adap->client_irq = FUNC10(adap->irq_domain, 0);
	if (!adap->client_irq) {
		ret = -ENOMEM;
		goto remove_irq_domain;
	}

	FUNC14(adap->client_irq, adap);
	FUNC13(adap->client_irq, &adap->irqchip,
				 handle_simple_irq);

	ret = FUNC4(&pdev->dev, irq, NULL,
					cht_wc_i2c_adap_thread_handler,
					IRQF_ONESHOT, "PMIC I2C Adapter", adap);
	if (ret)
		goto remove_irq_domain;

	FUNC8(&adap->adapter, adap);
	ret = FUNC5(&adap->adapter);
	if (ret)
		goto remove_irq_domain;

	/*
	 * Normally the Whiskey Cove PMIC is paired with a TI bq24292i charger,
	 * connected to this i2c bus, and a max17047 fuel-gauge and a fusb302
	 * USB Type-C controller connected to another i2c bus. In this setup
	 * the max17047 and fusb302 devices are enumerated through an INT33FE
	 * ACPI device. If this device is present register an i2c-client for
	 * the TI bq24292i charger.
	 */
	if (FUNC0("INT33FE", NULL, -1)) {
		board_info.irq = adap->client_irq;
		adap->client = FUNC7(&adap->adapter, &board_info);
		if (!adap->client) {
			ret = -ENOMEM;
			goto del_adapter;
		}
	}

	FUNC17(pdev, adap);
	return 0;

del_adapter:
	FUNC6(&adap->adapter);
remove_irq_domain:
	FUNC12(adap->irq_domain);
	return ret;
}