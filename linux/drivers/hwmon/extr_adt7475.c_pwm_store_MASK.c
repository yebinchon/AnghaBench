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
struct sensor_device_attribute_2 {int nr; size_t index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7475_data {int** pwm; int /*<<< orphan*/  lock; struct i2c_client* client; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t CONTROL ; 
 size_t EINVAL ; 
#define  INPUT 130 
#define  MAX 129 
#define  MIN 128 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 unsigned char FUNC1 (size_t) ; 
 unsigned char FUNC2 (size_t) ; 
 unsigned char FUNC3 (size_t) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (long,int /*<<< orphan*/ ,int) ; 
 struct adt7475_data* FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,unsigned char,int) ; 
 scalar_t__ FUNC8 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct sensor_device_attribute_2* FUNC11 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC12(struct device *dev, struct device_attribute *attr,
			 const char *buf, size_t count)
{

	struct sensor_device_attribute_2 *sattr = FUNC11(attr);
	struct adt7475_data *data = FUNC6(dev);
	struct i2c_client *client = data->client;
	unsigned char reg = 0;
	long val;

	if (FUNC8(buf, 10, &val))
		return -EINVAL;

	FUNC9(&data->lock);

	switch (sattr->nr) {
	case INPUT:
		/* Get a fresh value for CONTROL */
		data->pwm[CONTROL][sattr->index] =
			FUNC4(FUNC0(sattr->index));

		/*
		 * If we are not in manual mode, then we shouldn't allow
		 * the user to set the pwm speed
		 */
		if (((data->pwm[CONTROL][sattr->index] >> 5) & 7) != 7) {
			FUNC10(&data->lock);
			return count;
		}

		reg = FUNC3(sattr->index);
		break;

	case MIN:
		reg = FUNC2(sattr->index);
		break;

	case MAX:
		reg = FUNC1(sattr->index);
		break;
	}

	data->pwm[sattr->nr][sattr->index] = FUNC5(val, 0, 0xFF);
	FUNC7(client, reg,
				  data->pwm[sattr->nr][sattr->index]);
	FUNC10(&data->lock);

	return count;
}