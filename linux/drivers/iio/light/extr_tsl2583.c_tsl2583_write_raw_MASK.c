#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int als_gain_trim; unsigned int als_gain; int als_time; } ;
struct tsl2583_chip {int /*<<< orphan*/  als_mutex; TYPE_1__ als_settings; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int /*<<< orphan*/  type; } ;
struct TYPE_5__ {int mean; } ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_2__*) ; 
 int EINVAL ; 
#define  IIO_CHAN_INFO_CALIBBIAS 130 
#define  IIO_CHAN_INFO_CALIBSCALE 129 
#define  IIO_CHAN_INFO_INT_TIME 128 
 int /*<<< orphan*/  IIO_LIGHT ; 
 TYPE_2__* gainadj ; 
 struct tsl2583_chip* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct tsl2583_chip*) ; 
 int FUNC5 (struct tsl2583_chip*) ; 
 int FUNC6 (struct tsl2583_chip*,int) ; 

__attribute__((used)) static int FUNC7(struct iio_dev *indio_dev,
			     struct iio_chan_spec const *chan,
			     int val, int val2, long mask)
{
	struct tsl2583_chip *chip = FUNC1(indio_dev);
	int ret;

	ret = FUNC6(chip, true);
	if (ret < 0)
		return ret;

	FUNC2(&chip->als_mutex);

	ret = -EINVAL;
	switch (mask) {
	case IIO_CHAN_INFO_CALIBBIAS:
		if (chan->type == IIO_LIGHT) {
			chip->als_settings.als_gain_trim = val;
			ret = 0;
		}
		break;
	case IIO_CHAN_INFO_CALIBSCALE:
		if (chan->type == IIO_LIGHT) {
			unsigned int i;

			for (i = 0; i < FUNC0(gainadj); i++) {
				if (gainadj[i].mean == val) {
					chip->als_settings.als_gain = i;
					ret = FUNC4(chip);
					break;
				}
			}
		}
		break;
	case IIO_CHAN_INFO_INT_TIME:
		if (chan->type == IIO_LIGHT && !val && val2 >= 50 &&
		    val2 <= 650 && !(val2 % 50)) {
			chip->als_settings.als_time = val2;
			ret = FUNC5(chip);
		}
		break;
	default:
		break;
	}

	FUNC3(&chip->als_mutex);

	if (ret < 0)
		return ret;

	ret = FUNC6(chip, false);
	if (ret < 0)
		return ret;

	return ret;
}