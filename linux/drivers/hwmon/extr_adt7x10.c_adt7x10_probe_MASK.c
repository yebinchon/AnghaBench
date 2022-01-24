#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct device {int /*<<< orphan*/  kobj; } ;
struct adt7x10_ops {int dummy; } ;
struct adt7x10_data {char const* name; int oldconfig; int config; int /*<<< orphan*/  hwmon_dev; int /*<<< orphan*/  update_lock; struct adt7x10_ops const* ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADT7X10_CONFIG ; 
 int ADT7X10_CT_POLARITY ; 
 int ADT7X10_EVENT_MODE ; 
 int ADT7X10_FULL ; 
 int ADT7X10_INT_POLARITY ; 
 int ADT7X10_MODE_MASK ; 
 int ADT7X10_RESOLUTION ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_FALLING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct device*) ; 
 int /*<<< orphan*/  adt7x10_group ; 
 int /*<<< orphan*/  adt7x10_irq_handler ; 
 int FUNC3 (struct device*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  dev_attr_name ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,struct adt7x10_data*) ; 
 int FUNC8 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,int /*<<< orphan*/ *) ; 
 struct adt7x10_data* FUNC10 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct device*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct device*) ; 
 int FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC17(struct device *dev, const char *name, int irq,
		  const struct adt7x10_ops *ops)
{
	struct adt7x10_data *data;
	int ret;

	data = FUNC10(dev, sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	data->ops = ops;
	data->name = name;

	FUNC7(dev, data);
	FUNC13(&data->update_lock);

	/* configure as specified */
	ret = FUNC3(dev, ADT7X10_CONFIG);
	if (ret < 0) {
		FUNC5(dev, "Can't read config? %d\n", ret);
		return ret;
	}
	data->oldconfig = ret;

	/*
	 * Set to 16 bit resolution, continous conversion and comparator mode.
	 */
	data->config = data->oldconfig;
	data->config &= ~(ADT7X10_MODE_MASK | ADT7X10_CT_POLARITY |
			ADT7X10_INT_POLARITY);
	data->config |= ADT7X10_FULL | ADT7X10_RESOLUTION | ADT7X10_EVENT_MODE;

	if (data->config != data->oldconfig) {
		ret = FUNC4(dev, ADT7X10_CONFIG, data->config);
		if (ret)
			return ret;
	}
	FUNC5(dev, "Config %02x\n", data->config);

	ret = FUNC2(dev);
	if (ret)
		goto exit_restore;

	/* Register sysfs hooks */
	ret = FUNC15(&dev->kobj, &adt7x10_group);
	if (ret)
		goto exit_restore;

	/*
	 * The I2C device will already have it's own 'name' attribute, but for
	 * the SPI device we need to register it. name will only be non NULL if
	 * the device doesn't register the 'name' attribute on its own.
	 */
	if (name) {
		ret = FUNC8(dev, &dev_attr_name);
		if (ret)
			goto exit_remove;
	}

	data->hwmon_dev = FUNC11(dev);
	if (FUNC0(data->hwmon_dev)) {
		ret = FUNC1(data->hwmon_dev);
		goto exit_remove_name;
	}

	if (irq > 0) {
		ret = FUNC14(irq, NULL, adt7x10_irq_handler,
				IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
				FUNC6(dev), dev);
		if (ret)
			goto exit_hwmon_device_unregister;
	}

	return 0;

exit_hwmon_device_unregister:
	FUNC12(data->hwmon_dev);
exit_remove_name:
	if (name)
		FUNC9(dev, &dev_attr_name);
exit_remove:
	FUNC16(&dev->kobj, &adt7x10_group);
exit_restore:
	FUNC4(dev, ADT7X10_CONFIG, data->oldconfig);
	return ret;
}