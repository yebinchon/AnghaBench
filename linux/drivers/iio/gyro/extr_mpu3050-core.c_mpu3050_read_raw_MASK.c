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
struct mpu3050 {int* calibration; size_t fullscale; int /*<<< orphan*/  dev; int /*<<< orphan*/  lock; int /*<<< orphan*/  map; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int /*<<< orphan*/  scan_index; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  raw_val ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_ANGL_VEL 134 
#define  IIO_CHAN_INFO_CALIBBIAS 133 
#define  IIO_CHAN_INFO_OFFSET 132 
#define  IIO_CHAN_INFO_RAW 131 
#define  IIO_CHAN_INFO_SAMP_FREQ 130 
#define  IIO_CHAN_INFO_SCALE 129 
#define  IIO_TEMP 128 
 int IIO_VAL_FRACTIONAL ; 
 int IIO_VAL_INT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MPU3050_TEMP_H ; 
 int U16_MAX ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct mpu3050* FUNC3 (struct iio_dev*) ; 
 int* mpu3050_fs_precision ; 
 int FUNC4 (struct mpu3050*) ; 
 int FUNC5 (struct mpu3050*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC12(struct iio_dev *indio_dev,
			    struct iio_chan_spec const *chan,
			    int *val, int *val2,
			    long mask)
{
	struct mpu3050 *mpu3050 = FUNC3(indio_dev);
	int ret;
	__be16 raw_val;

	switch (mask) {
	case IIO_CHAN_INFO_OFFSET:
		switch (chan->type) {
		case IIO_TEMP:
			/* The temperature scaling is (x+23000)/280 Celsius */
			*val = 23000;
			return IIO_VAL_INT;
		default:
			return -EINVAL;
		}
	case IIO_CHAN_INFO_CALIBBIAS:
		switch (chan->type) {
		case IIO_ANGL_VEL:
			*val = mpu3050->calibration[chan->scan_index-1];
			return IIO_VAL_INT;
		default:
			return -EINVAL;
		}
	case IIO_CHAN_INFO_SAMP_FREQ:
		*val = FUNC4(mpu3050);
		return IIO_VAL_INT;
	case IIO_CHAN_INFO_SCALE:
		switch (chan->type) {
		case IIO_TEMP:
			/* Millidegrees, see about temperature scaling above */
			*val = 1000;
			*val2 = 280;
			return IIO_VAL_FRACTIONAL;
		case IIO_ANGL_VEL:
			/*
			 * Convert to the corresponding full scale in
			 * radians. All 16 bits are used with sign to
			 * span the available scale: to account for the one
			 * missing value if we multiply by 1/S16_MAX, instead
			 * multiply with 2/U16_MAX.
			 */
			*val = mpu3050_fs_precision[mpu3050->fullscale] * 2;
			*val2 = U16_MAX;
			return IIO_VAL_FRACTIONAL;
		default:
			return -EINVAL;
		}
	case IIO_CHAN_INFO_RAW:
		/* Resume device */
		FUNC8(mpu3050->dev);
		FUNC6(&mpu3050->lock);

		ret = FUNC5(mpu3050);
		if (ret)
			goto out_read_raw_unlock;

		switch (chan->type) {
		case IIO_TEMP:
			ret = FUNC11(mpu3050->map, MPU3050_TEMP_H,
					       &raw_val, sizeof(raw_val));
			if (ret) {
				FUNC2(mpu3050->dev,
					"error reading temperature\n");
				goto out_read_raw_unlock;
			}

			*val = FUNC1(raw_val);
			ret = IIO_VAL_INT;

			goto out_read_raw_unlock;
		case IIO_ANGL_VEL:
			ret = FUNC11(mpu3050->map,
				       FUNC0(chan->scan_index-1),
				       &raw_val,
				       sizeof(raw_val));
			if (ret) {
				FUNC2(mpu3050->dev,
					"error reading axis data\n");
				goto out_read_raw_unlock;
			}

			*val = FUNC1(raw_val);
			ret = IIO_VAL_INT;

			goto out_read_raw_unlock;
		default:
			ret = -EINVAL;
			goto out_read_raw_unlock;
		}
	default:
		break;
	}

	return -EINVAL;

out_read_raw_unlock:
	FUNC7(&mpu3050->lock);
	FUNC9(mpu3050->dev);
	FUNC10(mpu3050->dev);

	return ret;
}