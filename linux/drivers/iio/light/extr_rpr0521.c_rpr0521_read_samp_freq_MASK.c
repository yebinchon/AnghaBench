#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct rpr0521_data {int /*<<< orphan*/  regmap; } ;
typedef  enum iio_chan_type { ____Placeholder_iio_chan_type } iio_chan_type ;
struct TYPE_3__ {int als_hz; int als_uhz; int pxs_hz; int pxs_uhz; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int EINVAL ; 
#define  IIO_INTENSITY 129 
#define  IIO_PROXIMITY 128 
 int RPR0521_MODE_MEAS_TIME_MASK ; 
 int /*<<< orphan*/  RPR0521_REG_MODE_CTRL ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 TYPE_1__* rpr0521_samp_freq_i ; 

__attribute__((used)) static int FUNC2(struct rpr0521_data *data,
				enum iio_chan_type chan_type,
			    int *val, int *val2)
{
	int reg, ret;

	ret = FUNC1(data->regmap, RPR0521_REG_MODE_CTRL, &reg);
	if (ret < 0)
		return ret;

	reg &= RPR0521_MODE_MEAS_TIME_MASK;
	if (reg >= FUNC0(rpr0521_samp_freq_i))
		return -EINVAL;

	switch (chan_type) {
	case IIO_INTENSITY:
		*val = rpr0521_samp_freq_i[reg].als_hz;
		*val2 = rpr0521_samp_freq_i[reg].als_uhz;
		return 0;

	case IIO_PROXIMITY:
		*val = rpr0521_samp_freq_i[reg].pxs_hz;
		*val2 = rpr0521_samp_freq_i[reg].pxs_uhz;
		return 0;

	default:
		return -EINVAL;
	}
}