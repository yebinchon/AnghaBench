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
struct TYPE_6__ {int /*<<< orphan*/  hsdev; } ;
struct TYPE_5__ {int /*<<< orphan*/  logical_minimum; int /*<<< orphan*/  report_id; } ;
struct temperature_state {int scale_pre_decml; int scale_post_decml; int scale_precision; int value_offset; TYPE_2__ common_attributes; TYPE_1__ temperature_attr; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  HID_USAGE_SENSOR_DATA_ENVIRONMENTAL_TEMPERATURE ; 
 int /*<<< orphan*/  HID_USAGE_SENSOR_TEMPERATURE ; 
#define  IIO_CHAN_INFO_HYSTERESIS 132 
#define  IIO_CHAN_INFO_OFFSET 131 
#define  IIO_CHAN_INFO_RAW 130 
#define  IIO_CHAN_INFO_SAMP_FREQ 129 
#define  IIO_CHAN_INFO_SCALE 128 
 int /*<<< orphan*/  IIO_TEMP ; 
 int IIO_VAL_INT ; 
 int /*<<< orphan*/  SENSOR_HUB_SYNC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 int FUNC1 (TYPE_2__*,int*,int*) ; 
 int FUNC2 (TYPE_2__*,int*,int*) ; 
 struct temperature_state* FUNC3 (struct iio_dev*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct iio_dev *indio_dev,
				struct iio_chan_spec const *chan,
				int *val, int *val2, long mask)
{
	struct temperature_state *temp_st = FUNC3(indio_dev);

	switch (mask) {
	case IIO_CHAN_INFO_RAW:
		if (chan->type != IIO_TEMP)
			return -EINVAL;
		FUNC0(
			&temp_st->common_attributes, true);
		*val = FUNC4(
			temp_st->common_attributes.hsdev,
			HID_USAGE_SENSOR_TEMPERATURE,
			HID_USAGE_SENSOR_DATA_ENVIRONMENTAL_TEMPERATURE,
			temp_st->temperature_attr.report_id,
			SENSOR_HUB_SYNC,
			temp_st->temperature_attr.logical_minimum < 0);
		FUNC0(
				&temp_st->common_attributes,
				false);

		return IIO_VAL_INT;

	case IIO_CHAN_INFO_SCALE:
		*val = temp_st->scale_pre_decml;
		*val2 = temp_st->scale_post_decml;
		return temp_st->scale_precision;

	case IIO_CHAN_INFO_OFFSET:
		*val = temp_st->value_offset;
		return IIO_VAL_INT;

	case IIO_CHAN_INFO_SAMP_FREQ:
		return FUNC2(
				&temp_st->common_attributes, val, val2);

	case IIO_CHAN_INFO_HYSTERESIS:
		return FUNC1(
				&temp_st->common_attributes, val, val2);
	default:
		return -EINVAL;
	}
}