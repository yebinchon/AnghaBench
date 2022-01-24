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
struct mlx90614_data {int /*<<< orphan*/  lock; int /*<<< orphan*/  client; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
typedef  int s32 ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_CHAN_INFO_CALIBEMISSIVITY 129 
#define  IIO_CHAN_INFO_LOW_PASS_FILTER_3DB_FREQUENCY 128 
 int MLX90614_CONST_EMISSIVITY_RESOLUTION ; 
 int MLX90614_CONST_RAW_EMISSIVITY_MAX ; 
 int /*<<< orphan*/  MLX90614_EMISSIVITY ; 
 struct mlx90614_data* FUNC0 (struct iio_dev*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx90614_data*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx90614_data*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct iio_dev *indio_dev,
			     struct iio_chan_spec const *channel, int val,
			     int val2, long mask)
{
	struct mlx90614_data *data = FUNC0(indio_dev);
	s32 ret;

	switch (mask) {
	case IIO_CHAN_INFO_CALIBEMISSIVITY: /* 1/65535 / LSB */
		if (val < 0 || val2 < 0 || val > 1 || (val == 1 && val2 != 0))
			return -EINVAL;
		val = val * MLX90614_CONST_RAW_EMISSIVITY_MAX +
			val2 / MLX90614_CONST_EMISSIVITY_RESOLUTION;

		FUNC2(data, false);
		FUNC5(&data->lock);
		ret = FUNC4(data->client, MLX90614_EMISSIVITY,
					  val);
		FUNC6(&data->lock);
		FUNC3(data);

		return ret;
	case IIO_CHAN_INFO_LOW_PASS_FILTER_3DB_FREQUENCY: /* IIR Filter setting */
		if (val < 0 || val2 < 0)
			return -EINVAL;

		FUNC2(data, false);
		FUNC5(&data->lock);
		ret = FUNC1(data->client,
					  val * 100 + val2 / 10000);
		FUNC6(&data->lock);
		FUNC3(data);

		return ret;
	default:
		return -EINVAL;
	}
}