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
struct w83781d_data {int /*<<< orphan*/ * lm75; int /*<<< orphan*/  hwmon_dev; } ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct w83781d_data* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 

__attribute__((used)) static int
FUNC4(struct i2c_client *client)
{
	struct w83781d_data *data = FUNC1(client);
	struct device *dev = &client->dev;

	FUNC0(data->hwmon_dev);
	FUNC3(dev);

	FUNC2(data->lm75[0]);
	FUNC2(data->lm75[1]);

	return 0;
}