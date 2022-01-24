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
struct max44000_data {int /*<<< orphan*/  lock; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {scalar_t__ type; } ;
typedef  int s64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 long IIO_CHAN_INFO_INT_TIME ; 
 long IIO_CHAN_INFO_RAW ; 
 long IIO_CHAN_INFO_SCALE ; 
 scalar_t__ IIO_CURRENT ; 
 scalar_t__ IIO_LIGHT ; 
 int NSEC_PER_SEC ; 
 int USEC_PER_SEC ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct max44000_data* FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  max44000_int_time_avail_ns_array ; 
 int /*<<< orphan*/  max44000_scale_avail_ulux_array ; 
 int FUNC4 (struct max44000_data*,int) ; 
 int FUNC5 (struct max44000_data*,int) ; 
 int FUNC6 (struct max44000_data*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct iio_dev *indio_dev,
			      struct iio_chan_spec const *chan,
			      int val, int val2, long mask)
{
	struct max44000_data *data = FUNC3(indio_dev);
	int ret;

	if (mask == IIO_CHAN_INFO_RAW && chan->type == IIO_CURRENT) {
		FUNC7(&data->lock);
		ret = FUNC6(data, val);
		FUNC8(&data->lock);
		return ret;
	} else if (mask == IIO_CHAN_INFO_INT_TIME && chan->type == IIO_LIGHT) {
		s64 valns = val * NSEC_PER_SEC + val2;
		int alstim = FUNC2(valns,
				max44000_int_time_avail_ns_array,
				FUNC0(max44000_int_time_avail_ns_array));
		FUNC7(&data->lock);
		ret = FUNC5(data, alstim);
		FUNC8(&data->lock);
		return ret;
	} else if (mask == IIO_CHAN_INFO_SCALE && chan->type == IIO_LIGHT) {
		s64 valus = val * USEC_PER_SEC + val2;
		int alspga = FUNC1(valus,
				max44000_scale_avail_ulux_array,
				FUNC0(max44000_scale_avail_ulux_array));
		FUNC7(&data->lock);
		ret = FUNC4(data, alspga);
		FUNC8(&data->lock);
		return ret;
	}

	return -EINVAL;
}