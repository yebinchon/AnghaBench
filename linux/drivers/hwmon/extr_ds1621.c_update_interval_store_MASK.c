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
struct ds1621_data {int conf; unsigned long update_interval; int zbits; int /*<<< orphan*/  update_lock; struct i2c_client* client; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
typedef  size_t s32 ;

/* Variables and functions */
 int FUNC0 (unsigned long*) ; 
 int /*<<< orphan*/  DS1621_REG_CONF ; 
 int DS1621_REG_CONFIG_RESOL ; 
 int DS1621_REG_CONFIG_RESOL_SHIFT ; 
 struct ds1621_data* FUNC1 (struct device*) ; 
 unsigned long* ds1721_convrates ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 size_t FUNC4 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
				     struct device_attribute *da,
				     const char *buf, size_t count)
{
	struct ds1621_data *data = FUNC1(dev);
	struct i2c_client *client = data->client;
	unsigned long convrate;
	s32 err;
	int resol = 0;

	err = FUNC4(buf, 10, &convrate);
	if (err)
		return err;

	/* Convert rate into resolution bits */
	while (resol < (FUNC0(ds1721_convrates) - 1) &&
	       convrate > ds1721_convrates[resol])
		resol++;

	FUNC5(&data->update_lock);
	data->conf = FUNC2(client, DS1621_REG_CONF);
	data->conf &= ~DS1621_REG_CONFIG_RESOL;
	data->conf |= (resol << DS1621_REG_CONFIG_RESOL_SHIFT);
	FUNC3(client, DS1621_REG_CONF, data->conf);
	data->update_interval = ds1721_convrates[resol];
	data->zbits = 7 - resol;
	FUNC6(&data->update_lock);

	return count;
}