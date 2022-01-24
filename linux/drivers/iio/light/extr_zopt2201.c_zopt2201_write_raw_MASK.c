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
struct zopt2201_data {int dummy; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int /*<<< orphan*/  address; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_CHAN_INFO_INT_TIME 131 
#define  IIO_CHAN_INFO_SCALE 130 
#define  ZOPT2201_ALS_DATA 129 
#define  ZOPT2201_UVB_DATA 128 
 struct zopt2201_data* FUNC0 (struct iio_dev*) ; 
 int FUNC1 (struct zopt2201_data*,int,int) ; 
 int FUNC2 (struct zopt2201_data*,int,int) ; 
 int FUNC3 (struct zopt2201_data*,int,int) ; 

__attribute__((used)) static int FUNC4(struct iio_dev *indio_dev,
			      struct iio_chan_spec const *chan,
			      int val, int val2, long mask)
{
	struct zopt2201_data *data = FUNC0(indio_dev);

	switch (mask) {
	case IIO_CHAN_INFO_INT_TIME:
		return FUNC1(data, val, val2);
	case IIO_CHAN_INFO_SCALE:
		switch (chan->address) {
		case ZOPT2201_ALS_DATA:
			return FUNC2(data, val, val2);
		case ZOPT2201_UVB_DATA:
			return FUNC3(data, val, val2);
		default:
			return -EINVAL;
		}
	}

	return -EINVAL;
}