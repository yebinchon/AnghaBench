#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct atk_data {int /*<<< orphan*/  hwmon_dev; int /*<<< orphan*/  attr_groups; TYPE_1__* acpi_dev; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,struct atk_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct atk_data *data)
{
	struct device *dev = &data->acpi_dev->dev;

	FUNC1(dev, "registering hwmon device\n");
	data->hwmon_dev = FUNC2(dev, "atk0110",
							    data,
							    data->attr_groups);

	return FUNC0(data->hwmon_dev);
}