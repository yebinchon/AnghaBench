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
typedef  int u16 ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {scalar_t__ type; } ;
struct ad7291_chip_info {int dummy; } ;
typedef  enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef  enum iio_event_info { ____Placeholder_iio_event_info } iio_event_info ;
typedef  enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;

/* Variables and functions */
 int AD7291_VALUE_MASK ; 
 int IIO_EV_INFO_HYSTERESIS ; 
 int IIO_VAL_INT ; 
 scalar_t__ IIO_VOLTAGE ; 
 int FUNC0 (struct ad7291_chip_info*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_chan_spec const*,int,int) ; 
 struct ad7291_chip_info* FUNC2 (struct iio_dev*) ; 
 int FUNC3 (int,int) ; 

__attribute__((used)) static int FUNC4(struct iio_dev *indio_dev,
				   const struct iio_chan_spec *chan,
				   enum iio_event_type type,
				   enum iio_event_direction dir,
				   enum iio_event_info info,
				   int *val, int *val2)
{
	struct ad7291_chip_info *chip = FUNC2(indio_dev);
	int ret;
	u16 uval;

	ret = FUNC0(chip, FUNC1(chan, dir, info),
			      &uval);
	if (ret < 0)
		return ret;

	if (info == IIO_EV_INFO_HYSTERESIS || chan->type == IIO_VOLTAGE)
		*val = uval & AD7291_VALUE_MASK;

	else
		*val = FUNC3(uval, 11);

	return IIO_VAL_INT;
}