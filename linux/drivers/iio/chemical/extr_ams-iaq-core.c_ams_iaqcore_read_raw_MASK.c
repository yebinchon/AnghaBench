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
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int address; } ;
struct TYPE_2__ {int /*<<< orphan*/  voc_ppb; int /*<<< orphan*/  resistance; int /*<<< orphan*/  co2_ppm; } ;
struct ams_iaqcore_data {int /*<<< orphan*/  lock; TYPE_1__ buffer; } ;

/* Variables and functions */
#define  AMS_IAQCORE_VOC_CO2_IDX 130 
#define  AMS_IAQCORE_VOC_RESISTANCE_IDX 129 
#define  AMS_IAQCORE_VOC_TVOC_IDX 128 
 int EINVAL ; 
 long IIO_CHAN_INFO_PROCESSED ; 
 int IIO_VAL_INT ; 
 int IIO_VAL_INT_PLUS_MICRO ; 
 int IIO_VAL_INT_PLUS_NANO ; 
 int FUNC0 (struct ams_iaqcore_data*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct ams_iaqcore_data* FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct iio_dev *indio_dev,
				struct iio_chan_spec const *chan, int *val,
				int *val2, long mask)
{
	struct ams_iaqcore_data *data = FUNC3(indio_dev);
	int ret;

	if (mask != IIO_CHAN_INFO_PROCESSED)
		return -EINVAL;

	FUNC4(&data->lock);
	ret = FUNC0(data);

	if (ret)
		goto err_out;

	switch (chan->address) {
	case AMS_IAQCORE_VOC_CO2_IDX:
		*val = 0;
		*val2 = FUNC1(data->buffer.co2_ppm);
		ret = IIO_VAL_INT_PLUS_MICRO;
		break;
	case AMS_IAQCORE_VOC_RESISTANCE_IDX:
		*val = FUNC2(data->buffer.resistance);
		ret = IIO_VAL_INT;
		break;
	case AMS_IAQCORE_VOC_TVOC_IDX:
		*val = 0;
		*val2 = FUNC1(data->buffer.voc_ppb);
		ret = IIO_VAL_INT_PLUS_NANO;
		break;
	default:
		ret = -EINVAL;
	}

err_out:
	FUNC5(&data->lock);

	return ret;
}