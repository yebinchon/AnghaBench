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
typedef  scalar_t__ u16 ;
struct lidar_data {struct i2c_client* client; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  LIDAR_REG_CONTROL_ACQUIRE ; 
 int /*<<< orphan*/  LIDAR_REG_STATUS ; 
 int LIDAR_REG_STATUS_INVALID ; 
 int LIDAR_REG_STATUS_READY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct lidar_data*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct lidar_data*,scalar_t__*) ; 
 int FUNC3 (struct lidar_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 

__attribute__((used)) static int FUNC8(struct lidar_data *data, u16 *reg)
{
	struct i2c_client *client = data->client;
	int tries = 10;
	int ret;

	FUNC4(&client->dev);

	/* start sample */
	ret = FUNC3(data, LIDAR_REG_CONTROL_ACQUIRE);
	if (ret < 0) {
		FUNC0(&client->dev, "cannot send start measurement command");
		return ret;
	}

	while (tries--) {
		FUNC7(1000, 2000);

		ret = FUNC1(data, LIDAR_REG_STATUS);
		if (ret < 0)
			break;

		/* return -EINVAL since laser is likely pointed out of range */
		if (ret & LIDAR_REG_STATUS_INVALID) {
			*reg = 0;
			ret = -EINVAL;
			break;
		}

		/* sample ready to read */
		if (!(ret & LIDAR_REG_STATUS_READY)) {
			ret = FUNC2(data, reg);
			break;
		}
		ret = -EIO;
	}
	FUNC5(&client->dev);
	FUNC6(&client->dev);

	return ret;
}