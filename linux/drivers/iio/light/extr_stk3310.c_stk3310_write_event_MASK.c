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
typedef  int /*<<< orphan*/  u8 ;
struct stk3310_data {int /*<<< orphan*/  regmap; int /*<<< orphan*/  reg_ps_gain; struct i2c_client* client; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
typedef  enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef  enum iio_event_info { ____Placeholder_iio_event_info } iio_event_info ;
typedef  enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int EINVAL ; 
 int IIO_EV_DIR_FALLING ; 
 int IIO_EV_DIR_RISING ; 
 int /*<<< orphan*/  STK3310_REG_THDH_PS ; 
 int /*<<< orphan*/  STK3310_REG_THDL_PS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct stk3310_data* FUNC2 (struct iio_dev*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,unsigned int*) ; 
 int* stk3310_ps_max ; 

__attribute__((used)) static int FUNC5(struct iio_dev *indio_dev,
			       const struct iio_chan_spec *chan,
			       enum iio_event_type type,
			       enum iio_event_direction dir,
			       enum iio_event_info info,
			       int val, int val2)
{
	u8 reg;
	__be16 buf;
	int ret;
	unsigned int index;
	struct stk3310_data *data = FUNC2(indio_dev);
	struct i2c_client *client = data->client;

	ret = FUNC4(data->reg_ps_gain, &index);
	if (ret < 0)
		return ret;

	if (val < 0 || val > stk3310_ps_max[index])
		return -EINVAL;

	if (dir == IIO_EV_DIR_RISING)
		reg = STK3310_REG_THDH_PS;
	else if (dir == IIO_EV_DIR_FALLING)
		reg = STK3310_REG_THDL_PS;
	else
		return -EINVAL;

	buf = FUNC0(val);
	ret = FUNC3(data->regmap, reg, &buf, 2);
	if (ret < 0)
		FUNC1(&client->dev, "failed to set PS threshold!\n");

	return ret;
}