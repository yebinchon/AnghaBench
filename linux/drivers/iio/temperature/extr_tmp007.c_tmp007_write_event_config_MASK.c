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
struct tmp007_data {int status_mask; int /*<<< orphan*/  client; int /*<<< orphan*/  lock; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int channel2; } ;
typedef  enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef  enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;

/* Variables and functions */
 int EINVAL ; 
 int IIO_EV_DIR_RISING ; 
#define  IIO_MOD_TEMP_AMBIENT 129 
#define  IIO_MOD_TEMP_OBJECT 128 
 unsigned int TMP007_STATUS_LHF ; 
 unsigned int TMP007_STATUS_LLF ; 
 int /*<<< orphan*/  TMP007_STATUS_MASK ; 
 unsigned int TMP007_STATUS_OHF ; 
 unsigned int TMP007_STATUS_OLF ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct tmp007_data* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct iio_dev *indio_dev,
		const struct iio_chan_spec *chan, enum iio_event_type type,
		enum iio_event_direction dir, int state)
{
	struct tmp007_data *data = FUNC2(indio_dev);
	unsigned int status_mask;
	int ret;

	switch (chan->channel2) {
	case IIO_MOD_TEMP_AMBIENT:
	if (dir == IIO_EV_DIR_RISING)
			status_mask = TMP007_STATUS_LHF;
		else
			status_mask = TMP007_STATUS_LLF;
		break;
	case IIO_MOD_TEMP_OBJECT:
		if (dir == IIO_EV_DIR_RISING)
			status_mask = TMP007_STATUS_OHF;
		else
			status_mask = TMP007_STATUS_OLF;
		break;
	default:
		return -EINVAL;
	}

	FUNC3(&data->lock);
	ret = FUNC0(data->client, TMP007_STATUS_MASK);
	FUNC4(&data->lock);
	if (ret < 0)
		return ret;

	if (state)
		ret |= status_mask;
	else
		ret &= ~status_mask;

	return FUNC1(data->client, TMP007_STATUS_MASK,
					data->status_mask = ret);
}