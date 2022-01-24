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
typedef  size_t u8 ;
struct sht3x_data {int /*<<< orphan*/  data_lock; int /*<<< orphan*/ * humidity_limits; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {size_t index; } ;

/* Variables and functions */
 int /*<<< orphan*/  SHT3X_MAX_TEMPERATURE ; 
 int /*<<< orphan*/  SHT3X_MIN_TEMPERATURE ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sht3x_data* FUNC1 (struct device*) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ,int*) ; 
 int FUNC3 (struct device*,size_t,size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
				 struct device_attribute *attr,
				 const char *buf,
				 size_t count)
{
	int temperature;
	int ret;
	struct sht3x_data *data = FUNC1(dev);
	u8 index = FUNC6(attr)->index;

	ret = FUNC2(buf, 0, &temperature);
	if (ret)
		return ret;

	temperature = FUNC0(temperature, SHT3X_MIN_TEMPERATURE,
				SHT3X_MAX_TEMPERATURE);
	FUNC4(&data->data_lock);
	ret = FUNC3(dev, count, index, temperature,
			  data->humidity_limits[index]);
	FUNC5(&data->data_lock);

	return ret;
}