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
struct max1363_state {int mask_low; int mask_high; } ;
struct iio_dev {int /*<<< orphan*/  mlock; } ;
struct iio_chan_spec {int channel; } ;
typedef  enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef  enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;

/* Variables and functions */
 int IIO_EV_DIR_FALLING ; 
 int FUNC0 (int,int) ; 
 struct max1363_state* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct max1363_state*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct iio_dev *indio_dev,
	const struct iio_chan_spec *chan, enum iio_event_type type,
	enum iio_event_direction dir, int state)
{
	int ret = 0;
	struct max1363_state *st = FUNC1(indio_dev);
	u16 unifiedmask;
	int number = chan->channel;

	FUNC3(&indio_dev->mlock);
	unifiedmask = st->mask_low | st->mask_high;
	if (dir == IIO_EV_DIR_FALLING) {

		if (state == 0)
			st->mask_low &= ~(1 << number);
		else {
			ret = FUNC0((1 << number),
							 unifiedmask);
			if (ret)
				goto error_ret;
			st->mask_low |= (1 << number);
		}
	} else {
		if (state == 0)
			st->mask_high &= ~(1 << number);
		else {
			ret = FUNC0((1 << number),
							 unifiedmask);
			if (ret)
				goto error_ret;
			st->mask_high |= (1 << number);
		}
	}

	FUNC2(st, !!(st->mask_high | st->mask_low));
error_ret:
	FUNC4(&indio_dev->mlock);

	return ret;
}