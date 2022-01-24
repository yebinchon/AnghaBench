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
typedef  int u8 ;
struct sca3000_state {int /*<<< orphan*/  lock; TYPE_1__* info; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {scalar_t__ channel2; size_t address; } ;
typedef  enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef  enum iio_event_info { ____Placeholder_iio_event_info } iio_event_info ;
typedef  enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;
struct TYPE_2__ {int* mot_det_mult_y; int* mot_det_mult_xz; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 scalar_t__ IIO_MOD_Y ; 
 struct sca3000_state* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** sca3000_addresses ; 
 int FUNC4 (struct sca3000_state*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct iio_dev *indio_dev,
				     const struct iio_chan_spec *chan,
				     enum iio_event_type type,
				     enum iio_event_direction dir,
				     enum iio_event_info info,
				     int val, int val2)
{
	struct sca3000_state *st = FUNC1(indio_dev);
	int ret;
	int i;
	u8 nonlinear = 0;

	if (chan->channel2 == IIO_MOD_Y) {
		i = FUNC0(st->info->mot_det_mult_y);
		while (i > 0)
			if (val >= st->info->mot_det_mult_y[--i]) {
				nonlinear |= (1 << i);
				val -= st->info->mot_det_mult_y[i];
			}
	} else {
		i = FUNC0(st->info->mot_det_mult_xz);
		while (i > 0)
			if (val >= st->info->mot_det_mult_xz[--i]) {
				nonlinear |= (1 << i);
				val -= st->info->mot_det_mult_xz[i];
			}
	}

	FUNC2(&st->lock);
	ret = FUNC4(st,
				     sca3000_addresses[chan->address][1],
				     nonlinear);
	FUNC3(&st->lock);

	return ret;
}