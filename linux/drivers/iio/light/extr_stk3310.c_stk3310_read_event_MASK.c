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
typedef  int /*<<< orphan*/  u8 ;
struct stk3310_data {TYPE_1__* client; int /*<<< orphan*/  lock; int /*<<< orphan*/  regmap; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
typedef  enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef  enum iio_event_info { ____Placeholder_iio_event_info } iio_event_info ;
typedef  enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int IIO_EV_DIR_FALLING ; 
 int IIO_EV_DIR_RISING ; 
 int IIO_EV_INFO_VALUE ; 
 int IIO_VAL_INT ; 
 int /*<<< orphan*/  STK3310_REG_THDH_PS ; 
 int /*<<< orphan*/  STK3310_REG_THDL_PS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct stk3310_data* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC6(struct iio_dev *indio_dev,
			      const struct iio_chan_spec *chan,
			      enum iio_event_type type,
			      enum iio_event_direction dir,
			      enum iio_event_info info,
			      int *val, int *val2)
{
	u8 reg;
	__be16 buf;
	int ret;
	struct stk3310_data *data = FUNC2(indio_dev);

	if (info != IIO_EV_INFO_VALUE)
		return -EINVAL;

	/* Only proximity interrupts are implemented at the moment. */
	if (dir == IIO_EV_DIR_RISING)
		reg = STK3310_REG_THDH_PS;
	else if (dir == IIO_EV_DIR_FALLING)
		reg = STK3310_REG_THDL_PS;
	else
		return -EINVAL;

	FUNC3(&data->lock);
	ret = FUNC5(data->regmap, reg, &buf, 2);
	FUNC4(&data->lock);
	if (ret < 0) {
		FUNC1(&data->client->dev, "register read failed\n");
		return ret;
	}
	*val = FUNC0(buf);

	return IIO_VAL_INT;
}