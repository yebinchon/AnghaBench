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
struct sensor_device_attribute {int index; } ;
struct lm73_data {int ctrl; int /*<<< orphan*/  lock; int /*<<< orphan*/  client; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  LM73_REG_CTRL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct lm73_data* FUNC0 (struct device*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ,char*,int) ; 
 struct sensor_device_attribute* FUNC5 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
				 struct device_attribute *da, char *buf)
{
	struct sensor_device_attribute *attr = FUNC5(da);
	struct lm73_data *data = FUNC0(dev);
	s32 ctrl;

	FUNC2(&data->lock);
	ctrl = FUNC1(data->client, LM73_REG_CTRL);
	if (ctrl < 0)
		goto abort;
	data->ctrl = ctrl;
	FUNC3(&data->lock);

	return FUNC4(buf, PAGE_SIZE, "%d\n", (ctrl >> attr->index) & 1);

abort:
	FUNC3(&data->lock);
	return ctrl;
}