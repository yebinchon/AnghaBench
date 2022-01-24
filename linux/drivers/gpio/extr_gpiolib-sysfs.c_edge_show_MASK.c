#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct gpiod_data {scalar_t__ irq_flags; int /*<<< orphan*/  mutex; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_3__ {scalar_t__ flags; char* name; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 struct gpiod_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*) ; 
 TYPE_1__* trigger_types ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
		struct device_attribute *attr, char *buf)
{
	struct gpiod_data *data = FUNC1(dev);
	ssize_t	status = 0;
	int i;

	FUNC2(&data->mutex);

	for (i = 0; i < FUNC0(trigger_types); i++) {
		if (data->irq_flags == trigger_types[i].flags) {
			status = FUNC4(buf, "%s\n", trigger_types[i].name);
			break;
		}
	}

	FUNC3(&data->mutex);

	return status;
}