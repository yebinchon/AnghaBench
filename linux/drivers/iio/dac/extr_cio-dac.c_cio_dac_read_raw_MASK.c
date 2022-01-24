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
struct iio_chan_spec {size_t channel; } ;
struct cio_dac_iio {int* chan_out_states; } ;

/* Variables and functions */
 int EINVAL ; 
 long IIO_CHAN_INFO_RAW ; 
 int IIO_VAL_INT ; 
 struct cio_dac_iio* FUNC0 (struct iio_dev*) ; 

__attribute__((used)) static int FUNC1(struct iio_dev *indio_dev,
	struct iio_chan_spec const *chan, int *val, int *val2, long mask)
{
	struct cio_dac_iio *const priv = FUNC0(indio_dev);

	if (mask != IIO_CHAN_INFO_RAW)
		return -EINVAL;

	*val = priv->chan_out_states[chan->channel];

	return IIO_VAL_INT;
}