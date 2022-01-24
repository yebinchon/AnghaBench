#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int scan_index; } ;
struct TYPE_11__ {int data; int roundup; } ;
struct TYPE_10__ {int* scale; void* temp; } ;
struct TYPE_8__ {int* offset; void* flags; void* temp; } ;
struct TYPE_12__ {TYPE_4__ sensor_range; int /*<<< orphan*/  cmd; TYPE_3__ sensor_scale; TYPE_1__ sensor_offset; } ;
struct TYPE_13__ {int /*<<< orphan*/  cmd_lock; TYPE_5__ param; int /*<<< orphan*/  type; TYPE_2__* calib; } ;
struct cros_ec_sensors_state {TYPE_6__ core; } ;
struct TYPE_9__ {int offset; int scale; } ;

/* Variables and functions */
 int CROS_EC_SENSOR_MAX_AXIS ; 
 int CROS_EC_SENSOR_X ; 
 void* EC_MOTION_SENSE_INVALID_CALIB_TEMP ; 
 int EINVAL ; 
#define  IIO_CHAN_INFO_CALIBBIAS 130 
#define  IIO_CHAN_INFO_CALIBSCALE 129 
#define  IIO_CHAN_INFO_SCALE 128 
 int /*<<< orphan*/  MOTIONSENSE_CMD_SENSOR_OFFSET ; 
 int /*<<< orphan*/  MOTIONSENSE_CMD_SENSOR_RANGE ; 
 int /*<<< orphan*/  MOTIONSENSE_CMD_SENSOR_SCALE ; 
 int /*<<< orphan*/  MOTIONSENSE_TYPE_MAG ; 
 void* MOTION_SENSE_SET_OFFSET ; 
 int FUNC0 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_6__*,struct iio_chan_spec const*,int,int,long) ; 
 struct cros_ec_sensors_state* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct iio_dev *indio_dev,
			       struct iio_chan_spec const *chan,
			       int val, int val2, long mask)
{
	struct cros_ec_sensors_state *st = FUNC2(indio_dev);
	int i;
	int ret;
	int idx = chan->scan_index;

	FUNC3(&st->core.cmd_lock);

	switch (mask) {
	case IIO_CHAN_INFO_CALIBBIAS:
		st->core.calib[idx].offset = val;

		/* Send to EC for each axis, even if not complete */
		st->core.param.cmd = MOTIONSENSE_CMD_SENSOR_OFFSET;
		st->core.param.sensor_offset.flags =
			MOTION_SENSE_SET_OFFSET;
		for (i = CROS_EC_SENSOR_X; i < CROS_EC_SENSOR_MAX_AXIS; i++)
			st->core.param.sensor_offset.offset[i] =
				st->core.calib[i].offset;
		st->core.param.sensor_offset.temp =
			EC_MOTION_SENSE_INVALID_CALIB_TEMP;

		ret = FUNC0(&st->core, 0);
		break;
	case IIO_CHAN_INFO_CALIBSCALE:
		st->core.calib[idx].scale = val;
		/* Send to EC for each axis, even if not complete */

		st->core.param.cmd = MOTIONSENSE_CMD_SENSOR_SCALE;
		st->core.param.sensor_offset.flags =
			MOTION_SENSE_SET_OFFSET;
		for (i = CROS_EC_SENSOR_X; i < CROS_EC_SENSOR_MAX_AXIS; i++)
			st->core.param.sensor_scale.scale[i] =
				st->core.calib[i].scale;
		st->core.param.sensor_scale.temp =
			EC_MOTION_SENSE_INVALID_CALIB_TEMP;

		ret = FUNC0(&st->core, 0);
		break;
	case IIO_CHAN_INFO_SCALE:
		if (st->core.type == MOTIONSENSE_TYPE_MAG) {
			ret = -EINVAL;
			break;
		}
		st->core.param.cmd = MOTIONSENSE_CMD_SENSOR_RANGE;
		st->core.param.sensor_range.data = val;

		/* Always roundup, so caller gets at least what it asks for. */
		st->core.param.sensor_range.roundup = 1;

		ret = FUNC0(&st->core, 0);
		break;
	default:
		ret = FUNC1(
				&st->core, chan, val, val2, mask);
		break;
	}

	FUNC4(&st->core.cmd_lock);

	return ret;
}