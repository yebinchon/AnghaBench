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
typedef  int /*<<< orphan*/  u16 ;
struct sensor_device_attribute {int index; } ;
struct nct6775_data {int /*<<< orphan*/  update_lock; int /*<<< orphan*/ * target_speed; int /*<<< orphan*/ * fan_div; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long,int /*<<< orphan*/ ,unsigned int) ; 
 struct nct6775_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 int FUNC3 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct nct6775_data*,int) ; 
 struct sensor_device_attribute* FUNC7 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t
FUNC8(struct device *dev, struct device_attribute *attr,
		   const char *buf, size_t count)
{
	struct nct6775_data *data = FUNC1(dev);
	struct sensor_device_attribute *sattr = FUNC7(attr);
	int nr = sattr->index;
	unsigned long val;
	int err;
	u16 speed;

	err = FUNC3(buf, 10, &val);
	if (err < 0)
		return err;

	val = FUNC0(val, 0, 1350000U);
	speed = FUNC2(val, data->fan_div[nr]);

	FUNC4(&data->update_lock);
	data->target_speed[nr] = speed;
	FUNC6(data, nr);
	FUNC5(&data->update_lock);
	return count;
}