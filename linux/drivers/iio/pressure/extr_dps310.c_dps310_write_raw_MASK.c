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
struct iio_chan_spec {int /*<<< orphan*/  type; } ;
struct dps310_data {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EINTR ; 
 int EINVAL ; 
#define  IIO_CHAN_INFO_OVERSAMPLING_RATIO 131 
#define  IIO_CHAN_INFO_SAMP_FREQ 130 
#define  IIO_PRESSURE 129 
#define  IIO_TEMP 128 
 int FUNC0 (struct dps310_data*,int) ; 
 int FUNC1 (struct dps310_data*,int) ; 
 int FUNC2 (struct dps310_data*,int) ; 
 int FUNC3 (struct dps310_data*,int) ; 
 struct dps310_data* FUNC4 (struct iio_dev*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct iio_dev *iio,
			    struct iio_chan_spec const *chan, int val,
			    int val2, long mask)
{
	int rc;
	struct dps310_data *data = FUNC4(iio);

	if (FUNC5(&data->lock))
		return -EINTR;

	switch (mask) {
	case IIO_CHAN_INFO_SAMP_FREQ:
		switch (chan->type) {
		case IIO_PRESSURE:
			rc = FUNC1(data, val);
			break;

		case IIO_TEMP:
			rc = FUNC3(data, val);
			break;

		default:
			rc = -EINVAL;
			break;
		}
		break;

	case IIO_CHAN_INFO_OVERSAMPLING_RATIO:
		switch (chan->type) {
		case IIO_PRESSURE:
			rc = FUNC0(data, val);
			break;

		case IIO_TEMP:
			rc = FUNC2(data, val);
			break;

		default:
			rc = -EINVAL;
			break;
		}
		break;

	default:
		rc = -EINVAL;
		break;
	}

	FUNC6(&data->lock);
	return rc;
}