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
struct ms_tp_dev {int res_index; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int EINVAL ; 
#define  IIO_CHAN_INFO_SAMP_FREQ 128 
 struct ms_tp_dev* FUNC1 (struct iio_dev*) ; 
 int* ms5637_samp_freq ; 

__attribute__((used)) static int FUNC2(struct iio_dev *indio_dev,
			    struct iio_chan_spec const *chan,
			    int val, int val2, long mask)
{
	struct ms_tp_dev *dev_data = FUNC1(indio_dev);
	int i;

	switch (mask) {
	case IIO_CHAN_INFO_SAMP_FREQ:
		i = FUNC0(ms5637_samp_freq);
		while (i-- > 0)
			if (val == ms5637_samp_freq[i])
				break;
		if (i < 0)
			return -EINVAL;
		dev_data->res_index = i;

		return 0;
	default:
		return -EINVAL;
	}
}