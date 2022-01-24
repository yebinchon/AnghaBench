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
struct max5481_data {int dummy; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 long IIO_CHAN_INFO_RAW ; 
 int MAX5481_MAX_POS ; 
 int /*<<< orphan*/  MAX5481_WRITE_WIPER ; 
 struct max5481_data* FUNC0 (struct iio_dev*) ; 
 int FUNC1 (struct max5481_data*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct iio_dev *indio_dev,
		struct iio_chan_spec const *chan,
		int val, int val2, long mask)
{
	struct max5481_data *data = FUNC0(indio_dev);

	if (mask != IIO_CHAN_INFO_RAW)
		return -EINVAL;

	if (val < 0 || val > MAX5481_MAX_POS)
		return -EINVAL;

	return FUNC1(data, MAX5481_WRITE_WIPER, val);
}