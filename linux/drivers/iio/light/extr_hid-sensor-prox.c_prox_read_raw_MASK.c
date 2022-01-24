#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_6__ {int /*<<< orphan*/  hsdev; } ;
struct TYPE_5__ {int report_id; int units; int /*<<< orphan*/  unit_expo; int /*<<< orphan*/  logical_minimum; } ;
struct prox_state {TYPE_2__ common_attributes; TYPE_1__ prox_attr; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int /*<<< orphan*/  scan_index; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
#define  CHANNEL_SCAN_INDEX_PRESENCE 133 
 int EINVAL ; 
 int /*<<< orphan*/  HID_USAGE_SENSOR_HUMAN_PRESENCE ; 
 int /*<<< orphan*/  HID_USAGE_SENSOR_PROX ; 
#define  IIO_CHAN_INFO_HYSTERESIS 132 
#define  IIO_CHAN_INFO_OFFSET 131 
#define  IIO_CHAN_INFO_RAW 130 
#define  IIO_CHAN_INFO_SAMP_FREQ 129 
#define  IIO_CHAN_INFO_SCALE 128 
 int IIO_VAL_INT ; 
 int /*<<< orphan*/  SENSOR_HUB_SYNC ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 int FUNC2 (TYPE_2__*,int*,int*) ; 
 int FUNC3 (TYPE_2__*,int*,int*) ; 
 struct prox_state* FUNC4 (struct iio_dev*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct iio_dev *indio_dev,
			      struct iio_chan_spec const *chan,
			      int *val, int *val2,
			      long mask)
{
	struct prox_state *prox_state = FUNC4(indio_dev);
	int report_id = -1;
	u32 address;
	int ret_type;
	s32 min;

	*val = 0;
	*val2 = 0;
	switch (mask) {
	case IIO_CHAN_INFO_RAW:
		switch (chan->scan_index) {
		case  CHANNEL_SCAN_INDEX_PRESENCE:
			report_id = prox_state->prox_attr.report_id;
			min = prox_state->prox_attr.logical_minimum;
			address = HID_USAGE_SENSOR_HUMAN_PRESENCE;
			break;
		default:
			report_id = -1;
			break;
		}
		if (report_id >= 0) {
			FUNC1(&prox_state->common_attributes,
						true);
			*val = FUNC5(
				prox_state->common_attributes.hsdev,
				HID_USAGE_SENSOR_PROX, address,
				report_id,
				SENSOR_HUB_SYNC,
				min < 0);
			FUNC1(&prox_state->common_attributes,
						false);
		} else {
			*val = 0;
			return -EINVAL;
		}
		ret_type = IIO_VAL_INT;
		break;
	case IIO_CHAN_INFO_SCALE:
		*val = prox_state->prox_attr.units;
		ret_type = IIO_VAL_INT;
		break;
	case IIO_CHAN_INFO_OFFSET:
		*val = FUNC0(
				prox_state->prox_attr.unit_expo);
		ret_type = IIO_VAL_INT;
		break;
	case IIO_CHAN_INFO_SAMP_FREQ:
		ret_type = FUNC3(
				&prox_state->common_attributes, val, val2);
		break;
	case IIO_CHAN_INFO_HYSTERESIS:
		ret_type = FUNC2(
				&prox_state->common_attributes, val, val2);
		break;
	default:
		ret_type = -EINVAL;
		break;
	}

	return ret_type;
}