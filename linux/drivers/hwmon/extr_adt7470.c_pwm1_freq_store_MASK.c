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
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7470_data {int /*<<< orphan*/  lock; struct i2c_client* client; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 unsigned char ADT7470_CFG_LF ; 
 unsigned char ADT7470_FREQ_MASK ; 
 int ADT7470_FREQ_SHIFT ; 
 int /*<<< orphan*/  ADT7470_REG_CFG ; 
 int /*<<< orphan*/  ADT7470_REG_CFG_2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t EINVAL ; 
 int /*<<< orphan*/  adt7470_freq_map ; 
 struct adt7470_data* FUNC1 (struct device*) ; 
 int FUNC2 (long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned char FUNC3 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,int /*<<< orphan*/ ,unsigned char) ; 
 scalar_t__ FUNC5 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
			       struct device_attribute *devattr,
			       const char *buf, size_t count)
{
	struct adt7470_data *data = FUNC1(dev);
	struct i2c_client *client = data->client;
	long freq;
	int index;
	int low_freq = ADT7470_CFG_LF;
	unsigned char val;

	if (FUNC5(buf, 10, &freq))
		return -EINVAL;

	/* Round the user value given to the closest available frequency */
	index = FUNC2(freq, adt7470_freq_map,
			     FUNC0(adt7470_freq_map));

	if (index >= 8) {
		index -= 8;
		low_freq = 0;
	}

	FUNC6(&data->lock);
	/* Configuration Register 1 */
	val = FUNC3(client, ADT7470_REG_CFG);
	FUNC4(client, ADT7470_REG_CFG,
				  (val & ~ADT7470_CFG_LF) | low_freq);
	/* Configuration Register 2 */
	val = FUNC3(client, ADT7470_REG_CFG_2);
	FUNC4(client, ADT7470_REG_CFG_2,
		(val & ~ADT7470_FREQ_MASK) | (index << ADT7470_FREQ_SHIFT));
	FUNC7(&data->lock);

	return count;
}