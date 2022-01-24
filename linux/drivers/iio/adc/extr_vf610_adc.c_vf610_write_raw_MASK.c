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
struct TYPE_2__ {int sample_rate; } ;
struct vf610_adc {int* sample_freq_avail; TYPE_1__ adc_feature; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int EINVAL ; 
#define  IIO_CHAN_INFO_SAMP_FREQ 128 
 struct vf610_adc* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct vf610_adc*) ; 

__attribute__((used)) static int FUNC3(struct iio_dev *indio_dev,
			struct iio_chan_spec const *chan,
			int val,
			int val2,
			long mask)
{
	struct vf610_adc *info = FUNC1(indio_dev);
	int i;

	switch (mask) {
	case IIO_CHAN_INFO_SAMP_FREQ:
		for (i = 0;
			i < FUNC0(info->sample_freq_avail);
			i++)
			if (val == info->sample_freq_avail[i]) {
				info->adc_feature.sample_rate = i;
				FUNC2(info);
				return 0;
			}
		break;

	default:
		break;
	}

	return -EINVAL;
}