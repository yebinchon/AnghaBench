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
struct sx9500_data {int /*<<< orphan*/  regmap; } ;
struct iio_chan_spec {int /*<<< orphan*/  channel; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int IIO_VAL_INT ; 
 int /*<<< orphan*/  SX9500_REG_SENSOR_SEL ; 
 int /*<<< orphan*/  SX9500_REG_USE_MSB ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct sx9500_data *data,
				 const struct iio_chan_spec *chan,
				 int *val)
{
	int ret;
	__be16 regval;

	ret = FUNC2(data->regmap, SX9500_REG_SENSOR_SEL, chan->channel);
	if (ret < 0)
		return ret;

	ret = FUNC1(data->regmap, SX9500_REG_USE_MSB, &regval, 2);
	if (ret < 0)
		return ret;

	*val = FUNC0(regval);

	return IIO_VAL_INT;
}