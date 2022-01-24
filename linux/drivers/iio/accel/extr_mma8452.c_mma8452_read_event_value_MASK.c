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
struct mma8452_event_regs {int ev_ths_mask; int /*<<< orphan*/  ev_count; int /*<<< orphan*/  ev_ths; } ;
struct mma8452_data {int /*<<< orphan*/  client; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
typedef  enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef  enum iio_event_info { ____Placeholder_iio_event_info } iio_event_info ;
typedef  enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_EV_INFO_HIGH_PASS_FILTER_3DB 130 
#define  IIO_EV_INFO_PERIOD 129 
#define  IIO_EV_INFO_VALUE 128 
 int IIO_VAL_INT ; 
 int IIO_VAL_INT_PLUS_MICRO ; 
 int /*<<< orphan*/  MMA8452_TRANSIENT_CFG ; 
 int MMA8452_TRANSIENT_CFG_HPF_BYP ; 
 int USEC_PER_SEC ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mma8452_data* FUNC1 (struct iio_dev*) ; 
 int FUNC2 (struct mma8452_data*,struct iio_chan_spec const*,int,struct mma8452_event_regs const**) ; 
 size_t FUNC3 (struct mma8452_data*) ; 
 int FUNC4 (struct mma8452_data*) ; 
 int FUNC5 (struct mma8452_data*,int*,int*) ; 
 int** mma8452_time_step_us ; 

__attribute__((used)) static int FUNC6(struct iio_dev *indio_dev,
			       const struct iio_chan_spec *chan,
			       enum iio_event_type type,
			       enum iio_event_direction dir,
			       enum iio_event_info info,
			       int *val, int *val2)
{
	struct mma8452_data *data = FUNC1(indio_dev);
	int ret, us, power_mode;
	const struct mma8452_event_regs *ev_regs;

	ret = FUNC2(data, chan, dir, &ev_regs);
	if (ret)
		return ret;

	switch (info) {
	case IIO_EV_INFO_VALUE:
		ret = FUNC0(data->client, ev_regs->ev_ths);
		if (ret < 0)
			return ret;

		*val = ret & ev_regs->ev_ths_mask;

		return IIO_VAL_INT;

	case IIO_EV_INFO_PERIOD:
		ret = FUNC0(data->client, ev_regs->ev_count);
		if (ret < 0)
			return ret;

		power_mode = FUNC4(data);
		if (power_mode < 0)
			return power_mode;

		us = ret * mma8452_time_step_us[power_mode][
				FUNC3(data)];
		*val = us / USEC_PER_SEC;
		*val2 = us % USEC_PER_SEC;

		return IIO_VAL_INT_PLUS_MICRO;

	case IIO_EV_INFO_HIGH_PASS_FILTER_3DB:
		ret = FUNC0(data->client,
					       MMA8452_TRANSIENT_CFG);
		if (ret < 0)
			return ret;

		if (ret & MMA8452_TRANSIENT_CFG_HPF_BYP) {
			*val = 0;
			*val2 = 0;
		} else {
			ret = FUNC5(data, val, val2);
			if (ret < 0)
				return ret;
		}

		return IIO_VAL_INT_PLUS_MICRO;

	default:
		return -EINVAL;
	}
}