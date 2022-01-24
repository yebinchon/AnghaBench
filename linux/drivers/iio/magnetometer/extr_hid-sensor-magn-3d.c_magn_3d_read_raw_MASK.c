#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_10__ {int /*<<< orphan*/  hsdev; } ;
struct TYPE_9__ {int scale_pre_decml; int scale_post_decml; int scale_precision; int value_offset; } ;
struct TYPE_8__ {int scale_pre_decml; int scale_post_decml; int scale_precision; int value_offset; } ;
struct magn_3d_state {TYPE_4__ rot_attributes; TYPE_4__ magn_flux_attributes; TYPE_3__ rot_attr; TYPE_2__ magn_flux_attr; TYPE_1__* magn; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {size_t address; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  s32 ;
struct TYPE_7__ {int report_id; int /*<<< orphan*/  logical_minimum; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  HID_USAGE_SENSOR_COMPASS_3D ; 
#define  IIO_CHAN_INFO_HYSTERESIS 134 
#define  IIO_CHAN_INFO_OFFSET 133 
#define  IIO_CHAN_INFO_RAW 132 
#define  IIO_CHAN_INFO_SAMP_FREQ 131 
#define  IIO_CHAN_INFO_SCALE 130 
#define  IIO_MAGN 129 
#define  IIO_ROT 128 
 int IIO_VAL_INT ; 
 int /*<<< orphan*/  SENSOR_HUB_SYNC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int) ; 
 int FUNC1 (TYPE_4__*,int*,int*) ; 
 int FUNC2 (TYPE_4__*,int*,int*) ; 
 struct magn_3d_state* FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/ * magn_3d_addresses ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct iio_dev *indio_dev,
			      struct iio_chan_spec const *chan,
			      int *val, int *val2,
			      long mask)
{
	struct magn_3d_state *magn_state = FUNC3(indio_dev);
	int report_id = -1;
	u32 address;
	int ret_type;
	s32 min;

	*val = 0;
	*val2 = 0;
	switch (mask) {
	case IIO_CHAN_INFO_RAW:
		FUNC0(&magn_state->magn_flux_attributes, true);
		report_id = magn_state->magn[chan->address].report_id;
		min = magn_state->magn[chan->address].logical_minimum;
		address = magn_3d_addresses[chan->address];
		if (report_id >= 0)
			*val = FUNC4(
				magn_state->magn_flux_attributes.hsdev,
				HID_USAGE_SENSOR_COMPASS_3D, address,
				report_id,
				SENSOR_HUB_SYNC,
				min < 0);
		else {
			*val = 0;
			FUNC0(
				&magn_state->magn_flux_attributes,
				false);
			return -EINVAL;
		}
		FUNC0(&magn_state->magn_flux_attributes,
					false);
		ret_type = IIO_VAL_INT;
		break;
	case IIO_CHAN_INFO_SCALE:
		switch (chan->type) {
		case IIO_MAGN:
			*val = magn_state->magn_flux_attr.scale_pre_decml;
			*val2 = magn_state->magn_flux_attr.scale_post_decml;
			ret_type = magn_state->magn_flux_attr.scale_precision;
			break;
		case IIO_ROT:
			*val = magn_state->rot_attr.scale_pre_decml;
			*val2 = magn_state->rot_attr.scale_post_decml;
			ret_type = magn_state->rot_attr.scale_precision;
			break;
		default:
			ret_type = -EINVAL;
		}
		break;
	case IIO_CHAN_INFO_OFFSET:
		switch (chan->type) {
		case IIO_MAGN:
			*val = magn_state->magn_flux_attr.value_offset;
			ret_type = IIO_VAL_INT;
			break;
		case IIO_ROT:
			*val = magn_state->rot_attr.value_offset;
			ret_type = IIO_VAL_INT;
			break;
		default:
			ret_type = -EINVAL;
		}
		break;
	case IIO_CHAN_INFO_SAMP_FREQ:
		ret_type = FUNC2(
			&magn_state->magn_flux_attributes, val, val2);
		break;
	case IIO_CHAN_INFO_HYSTERESIS:
		switch (chan->type) {
		case IIO_MAGN:
			ret_type = FUNC1(
				&magn_state->magn_flux_attributes, val, val2);
			break;
		case IIO_ROT:
			ret_type = FUNC1(
				&magn_state->rot_attributes, val, val2);
			break;
		default:
			ret_type = -EINVAL;
		}
		break;
	default:
		ret_type = -EINVAL;
		break;
	}

	return ret_type;
}