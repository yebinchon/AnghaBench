#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/ * notifier_call; } ;
struct sht15_data {int supply_uv; void* reg; TYPE_1__ nb; void* hwmon_dev; TYPE_3__* dev; void* data; void* sck; int /*<<< orphan*/  wait_queue; int /*<<< orphan*/  read_lock; int /*<<< orphan*/  update_supply_work; int /*<<< orphan*/  read_work; } ;
struct TYPE_10__ {int /*<<< orphan*/  kobj; } ;
struct platform_device {TYPE_3__ dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_IN ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQF_TRIGGER_FALLING ; 
 scalar_t__ FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*,...) ; 
 void* FUNC4 (TYPE_3__*,char*,int /*<<< orphan*/ ) ; 
 struct sht15_data* FUNC5 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 void* FUNC6 (TYPE_3__*,char*) ; 
 int FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct sht15_data*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 void* FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct sht15_data*) ; 
 int /*<<< orphan*/  FUNC14 (void*) ; 
 int FUNC15 (void*) ; 
 int FUNC16 (void*) ; 
 int FUNC17 (void*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (void*,TYPE_1__*) ; 
 int /*<<< orphan*/  sht15_attr_group ; 
 int /*<<< orphan*/  sht15_bh_read_data ; 
 int FUNC19 (struct sht15_data*) ; 
 int /*<<< orphan*/  sht15_interrupt_fired ; 
 int /*<<< orphan*/  sht15_invalidate_voltage ; 
 int FUNC20 (struct sht15_data*) ; 
 int /*<<< orphan*/  sht15_update_voltage ; 
 int FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC23(struct platform_device *pdev)
{
	int ret;
	struct sht15_data *data;

	data = FUNC5(&pdev->dev, sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	FUNC0(&data->read_work, sht15_bh_read_data);
	FUNC0(&data->update_supply_work, sht15_update_voltage);
	FUNC13(pdev, data);
	FUNC12(&data->read_lock);
	data->dev = &pdev->dev;
	FUNC11(&data->wait_queue);

	/*
	 * If a regulator is available,
	 * query what the supply voltage actually is!
	 */
	data->reg = FUNC6(data->dev, "vcc");
	if (!FUNC1(data->reg)) {
		int voltage;

		voltage = FUNC16(data->reg);
		if (voltage)
			data->supply_uv = voltage;

		ret = FUNC15(data->reg);
		if (ret != 0) {
			FUNC3(&pdev->dev,
				"failed to enable regulator: %d\n", ret);
			return ret;
		}

		/*
		 * Setup a notifier block to update this if another device
		 * causes the voltage to change
		 */
		data->nb.notifier_call = &sht15_invalidate_voltage;
		ret = FUNC17(data->reg, &data->nb);
		if (ret) {
			FUNC3(&pdev->dev,
				"regulator notifier request failed\n");
			FUNC14(data->reg);
			return ret;
		}
	}

	/* Try requesting the GPIOs */
	data->sck = FUNC4(&pdev->dev, "clk", GPIOD_OUT_LOW);
	if (FUNC1(data->sck)) {
		ret = FUNC2(data->sck);
		FUNC3(&pdev->dev, "clock line GPIO request failed\n");
		goto err_release_reg;
	}
	data->data = FUNC4(&pdev->dev, "data", GPIOD_IN);
	if (FUNC1(data->data)) {
		ret = FUNC2(data->data);
		FUNC3(&pdev->dev, "data line GPIO request failed\n");
		goto err_release_reg;
	}

	ret = FUNC7(&pdev->dev, FUNC9(data->data),
			       sht15_interrupt_fired,
			       IRQF_TRIGGER_FALLING,
			       "sht15 data",
			       data);
	if (ret) {
		FUNC3(&pdev->dev, "failed to get irq for data line\n");
		goto err_release_reg;
	}
	FUNC8(FUNC9(data->data));
	ret = FUNC19(data);
	if (ret)
		goto err_release_reg;
	ret = FUNC20(data);
	if (ret)
		goto err_release_reg;

	ret = FUNC21(&pdev->dev.kobj, &sht15_attr_group);
	if (ret) {
		FUNC3(&pdev->dev, "sysfs create failed\n");
		goto err_release_reg;
	}

	data->hwmon_dev = FUNC10(data->dev);
	if (FUNC1(data->hwmon_dev)) {
		ret = FUNC2(data->hwmon_dev);
		goto err_release_sysfs_group;
	}

	return 0;

err_release_sysfs_group:
	FUNC22(&pdev->dev.kobj, &sht15_attr_group);
err_release_reg:
	if (!FUNC1(data->reg)) {
		FUNC18(data->reg, &data->nb);
		FUNC14(data->reg);
	}
	return ret;
}