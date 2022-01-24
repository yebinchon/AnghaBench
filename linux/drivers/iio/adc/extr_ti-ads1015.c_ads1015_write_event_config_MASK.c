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
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct ads1015_data {int /*<<< orphan*/  lock; } ;
typedef  enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef  enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;

/* Variables and functions */
 int ADS1015_CFG_COMP_MODE_TRAD ; 
 int ADS1015_CFG_COMP_MODE_WINDOW ; 
 int IIO_EV_DIR_EITHER ; 
 int FUNC0 (struct ads1015_data*,struct iio_chan_spec const*,int) ; 
 int FUNC1 (struct ads1015_data*,struct iio_chan_spec const*,int) ; 
 int FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct iio_dev*) ; 
 struct ads1015_data* FUNC4 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct iio_dev *indio_dev,
	const struct iio_chan_spec *chan, enum iio_event_type type,
	enum iio_event_direction dir, int state)
{
	struct ads1015_data *data = FUNC4(indio_dev);
	int ret;
	int comp_mode = (dir == IIO_EV_DIR_EITHER) ?
		ADS1015_CFG_COMP_MODE_WINDOW : ADS1015_CFG_COMP_MODE_TRAD;

	FUNC5(&data->lock);

	/* Prevent from enabling both buffer and event at a time */
	ret = FUNC2(indio_dev);
	if (ret) {
		FUNC6(&data->lock);
		return ret;
	}

	if (state)
		ret = FUNC1(data, chan, comp_mode);
	else
		ret = FUNC0(data, chan, comp_mode);

	FUNC3(indio_dev);
	FUNC6(&data->lock);

	return ret;
}