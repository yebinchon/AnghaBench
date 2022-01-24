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
struct adt7x10_data {scalar_t__ oldconfig; scalar_t__ config; scalar_t__ name; int /*<<< orphan*/  hwmon_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADT7X10_CONFIG ; 
 int /*<<< orphan*/  adt7x10_group ; 
 int /*<<< orphan*/  FUNC0 (struct device*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  dev_attr_name ; 
 struct adt7x10_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,struct device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC6(struct device *dev, int irq)
{
	struct adt7x10_data *data = FUNC1(dev);

	if (irq > 0)
		FUNC3(irq, dev);

	FUNC4(data->hwmon_dev);
	if (data->name)
		FUNC2(dev, &dev_attr_name);
	FUNC5(&dev->kobj, &adt7x10_group);
	if (data->oldconfig != data->config)
		FUNC0(dev, ADT7X10_CONFIG, data->oldconfig);
	return 0;
}