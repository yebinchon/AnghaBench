#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct TYPE_5__ {int data; int roundup; } ;
struct TYPE_6__ {TYPE_1__ sensor_range; int /*<<< orphan*/  cmd; } ;
struct TYPE_7__ {int /*<<< orphan*/  cmd_lock; TYPE_2__ param; } ;
struct cros_ec_baro_state {TYPE_3__ core; } ;

/* Variables and functions */
 int EIO ; 
#define  IIO_CHAN_INFO_SCALE 128 
 int /*<<< orphan*/  MOTIONSENSE_CMD_SENSOR_RANGE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_3__*,struct iio_chan_spec const*,int,int,long) ; 
 struct cros_ec_baro_state* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct iio_dev *indio_dev,
			      struct iio_chan_spec const *chan,
			      int val, int val2, long mask)
{
	struct cros_ec_baro_state *st = FUNC2(indio_dev);
	int ret = 0;

	FUNC3(&st->core.cmd_lock);

	switch (mask) {
	case IIO_CHAN_INFO_SCALE:
		st->core.param.cmd = MOTIONSENSE_CMD_SENSOR_RANGE;
		st->core.param.sensor_range.data = val;

		/* Always roundup, so caller gets at least what it asks for. */
		st->core.param.sensor_range.roundup = 1;

		if (FUNC0(&st->core, 0))
			ret = -EIO;
		break;
	default:
		ret = FUNC1(&st->core, chan, val, val2,
						 mask);
		break;
	}

	FUNC4(&st->core.cmd_lock);

	return ret;
}