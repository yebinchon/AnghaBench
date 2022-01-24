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
struct iio_dev {int /*<<< orphan*/  dev; } ;
struct i2c_client {int dummy; } ;
struct hp206c_data {struct i2c_client* client; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int HP206C_DEV_RDY_WAIT_US ; 
 int HP206C_FLAG_DEV_RDY ; 
 int HP206C_MAX_DEV_RDY_WAIT_COUNT ; 
 int /*<<< orphan*/  HP206C_REG_INT_SRC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 struct hp206c_data* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static int FUNC4(struct iio_dev *indio_dev)
{
	int ret;
	int count = 0;
	struct hp206c_data *data = FUNC2(indio_dev);
	struct i2c_client *client = data->client;

	while (++count <= HP206C_MAX_DEV_RDY_WAIT_COUNT) {
		ret = FUNC1(client, HP206C_REG_INT_SRC);
		if (ret < 0) {
			FUNC0(&indio_dev->dev, "Failed READ_REG INT_SRC: %d\n", ret);
			return ret;
		}
		if (ret & HP206C_FLAG_DEV_RDY)
			return 0;
		FUNC3(HP206C_DEV_RDY_WAIT_US, HP206C_DEV_RDY_WAIT_US * 3 / 2);
	}
	return -ETIMEDOUT;
}