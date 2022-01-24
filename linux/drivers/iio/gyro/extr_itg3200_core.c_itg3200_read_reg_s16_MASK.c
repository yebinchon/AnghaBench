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
struct itg3200 {struct i2c_client* i2c; } ;
struct iio_dev {int dummy; } ;
struct i2c_msg {int flags; int len; char* buf; int /*<<< orphan*/  addr; } ;
struct i2c_client {int flags; int /*<<< orphan*/  adapter; int /*<<< orphan*/  addr; } ;
typedef  int s16 ;

/* Variables and functions */
 int I2C_M_RD ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct i2c_msg*,int) ; 
 struct itg3200* FUNC2 (struct iio_dev*) ; 

__attribute__((used)) static int FUNC3(struct iio_dev *indio_dev, u8 lower_reg_address,
		int *val)
{
	struct itg3200 *st = FUNC2(indio_dev);
	struct i2c_client *client = st->i2c;
	int ret;
	s16 out;

	struct i2c_msg msg[2] = {
		{
			.addr = client->addr,
			.flags = client->flags,
			.len = 1,
			.buf = (char *)&lower_reg_address,
		},
		{
			.addr = client->addr,
			.flags = client->flags | I2C_M_RD,
			.len = 2,
			.buf = (char *)&out,
		},
	};

	lower_reg_address |= 0x80;
	ret = FUNC1(client->adapter, msg, 2);
	FUNC0(&out);
	*val = out;

	return (ret == 2) ? 0 : ret;
}