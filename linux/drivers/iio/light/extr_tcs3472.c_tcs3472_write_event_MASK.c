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
struct tcs3472_data {int high_thresh; int low_thresh; int apers; int /*<<< orphan*/  lock; int /*<<< orphan*/  client; int /*<<< orphan*/  atime; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
typedef  enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef  enum iio_event_info { ____Placeholder_iio_event_info } iio_event_info ;
typedef  enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int EINVAL ; 
#define  IIO_EV_DIR_FALLING 131 
#define  IIO_EV_DIR_RISING 130 
#define  IIO_EV_INFO_PERIOD 129 
#define  IIO_EV_INFO_VALUE 128 
 int /*<<< orphan*/  TCS3472_AIHT ; 
 int /*<<< orphan*/  TCS3472_AILT ; 
 int /*<<< orphan*/  TCS3472_PERS ; 
 int USEC_PER_SEC ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct tcs3472_data* FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int* tcs3472_intr_pers ; 

__attribute__((used)) static int FUNC6(struct iio_dev *indio_dev,
	const struct iio_chan_spec *chan, enum iio_event_type type,
	enum iio_event_direction dir, enum iio_event_info info, int val,
	int val2)
{
	struct tcs3472_data *data = FUNC3(indio_dev);
	int ret;
	u8 command;
	int period;
	int i;

	FUNC4(&data->lock);
	switch (info) {
	case IIO_EV_INFO_VALUE:
		switch (dir) {
		case IIO_EV_DIR_RISING:
			command = TCS3472_AIHT;
			break;
		case IIO_EV_DIR_FALLING:
			command = TCS3472_AILT;
			break;
		default:
			ret = -EINVAL;
			goto error;
		}
		ret = FUNC2(data->client, command, val);
		if (ret)
			goto error;

		if (dir == IIO_EV_DIR_RISING)
			data->high_thresh = val;
		else
			data->low_thresh = val;
		break;
	case IIO_EV_INFO_PERIOD:
		period = val * USEC_PER_SEC + val2;
		for (i = 1; i < FUNC0(tcs3472_intr_pers) - 1; i++) {
			if (period <= (256 - data->atime) * 2400 *
					tcs3472_intr_pers[i])
				break;
		}
		ret = FUNC1(data->client, TCS3472_PERS, i);
		if (ret)
			goto error;

		data->apers = i;
		break;
	default:
		ret = -EINVAL;
		break;
	}
error:
	FUNC5(&data->lock);

	return ret;
}