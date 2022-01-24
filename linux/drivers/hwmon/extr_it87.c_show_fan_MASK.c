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
struct sensor_device_attribute_2 {int nr; int index; } ;
struct it87_data {int /*<<< orphan*/ * fan_div; int /*<<< orphan*/ ** fan; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct it87_data*) ; 
 struct it87_data* FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 struct sensor_device_attribute_2* FUNC6 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev, struct device_attribute *attr,
			char *buf)
{
	struct sensor_device_attribute_2 *sattr = FUNC6(attr);
	int nr = sattr->nr;
	int index = sattr->index;
	int speed;
	struct it87_data *data = FUNC4(dev);

	speed = FUNC3(data) ?
		FUNC1(data->fan[nr][index]) :
		FUNC2(data->fan[nr][index],
			     FUNC0(data->fan_div[nr]));
	return FUNC5(buf, "%d\n", speed);
}