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
typedef  int u8 ;
struct raydium_data {int /*<<< orphan*/  sysfs_mutex; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  cal_cmd ;

/* Variables and functions */
 int /*<<< orphan*/  RAYDIUM_WAIT_READY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 struct raydium_data* FUNC1 (struct i2c_client*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct i2c_client*,int const*,int,int /*<<< orphan*/ ) ; 
 struct i2c_client* FUNC5 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
					   struct device_attribute *attr,
					   const char *buf, size_t count)
{
	struct i2c_client *client = FUNC5(dev);
	struct raydium_data *ts = FUNC1(client);
	static const u8 cal_cmd[] = { 0x00, 0x01, 0x9E };
	int error;

	error = FUNC2(&ts->sysfs_mutex);
	if (error)
		return error;

	error = FUNC4(client, cal_cmd, sizeof(cal_cmd),
					 RAYDIUM_WAIT_READY);
	if (error)
		FUNC0(&client->dev, "calibrate command failed: %d\n", error);

	FUNC3(&ts->sysfs_mutex);
	return error ?: count;
}