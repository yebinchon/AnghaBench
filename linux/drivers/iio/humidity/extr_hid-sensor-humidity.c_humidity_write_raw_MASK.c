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
struct hid_humidity_state {int /*<<< orphan*/  common_attributes; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_CHAN_INFO_HYSTERESIS 129 
#define  IIO_CHAN_INFO_SAMP_FREQ 128 
 int FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 struct hid_humidity_state* FUNC2 (struct iio_dev*) ; 

__attribute__((used)) static int FUNC3(struct iio_dev *indio_dev,
				struct iio_chan_spec const *chan,
				int val, int val2, long mask)
{
	struct hid_humidity_state *humid_st = FUNC2(indio_dev);

	switch (mask) {
	case IIO_CHAN_INFO_SAMP_FREQ:
		return FUNC1(
				&humid_st->common_attributes, val, val2);

	case IIO_CHAN_INFO_HYSTERESIS:
		return FUNC0(
				&humid_st->common_attributes, val, val2);

	default:
		return -EINVAL;
	}
}