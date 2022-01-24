#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct iio_dev {int dummy; } ;
struct ad5755_state {int dummy; } ;
struct ad5755_platform_data {unsigned int dc_dc_phase; unsigned int dc_dc_freq; unsigned int dc_dc_maxv; TYPE_2__* dac; scalar_t__ ext_dc_dc_compenstation_resistor; } ;
struct TYPE_3__ {unsigned int step_size; unsigned int rate; scalar_t__ enable; } ;
struct TYPE_4__ {unsigned int mode; scalar_t__ enable_voltage_overrange; int /*<<< orphan*/  ext_current_sense_resistor; TYPE_1__ slew; } ;

/* Variables and functions */
 int /*<<< orphan*/  AD5755_CTRL_REG_DC_DC ; 
 int /*<<< orphan*/  AD5755_CTRL_REG_SLEW ; 
 unsigned int AD5755_DAC_INT_CURRENT_SENSE_RESISTOR ; 
 unsigned int AD5755_DAC_VOLTAGE_OVERRANGE_EN ; 
 unsigned int AD5755_DC_DC_FREQ_650kHZ ; 
 unsigned int AD5755_DC_DC_FREQ_SHIFT ; 
 unsigned int AD5755_DC_DC_MAXV ; 
 unsigned int AD5755_DC_DC_MAXV_29V5 ; 
 unsigned int AD5755_DC_DC_PHASE_90_DEGREE ; 
 unsigned int AD5755_DC_DC_PHASE_SHIFT ; 
 unsigned int AD5755_EXT_DC_DC_COMP_RES ; 
 unsigned int AD5755_SLEW_ENABLE ; 
 unsigned int AD5755_SLEW_RATE_SHIFT ; 
 unsigned int AD5755_SLEW_STEP_SIZE_SHIFT ; 
 unsigned int FUNC0 (TYPE_2__*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct ad5755_state*,unsigned int) ; 
 int FUNC2 (struct iio_dev*,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct iio_dev*,unsigned int,int /*<<< orphan*/ ,unsigned int) ; 
 struct ad5755_state* FUNC4 (struct iio_dev*) ; 

__attribute__((used)) static int FUNC5(struct iio_dev *indio_dev,
			      const struct ad5755_platform_data *pdata)
{
	struct ad5755_state *st = FUNC4(indio_dev);
	unsigned int val;
	unsigned int i;
	int ret;

	if (pdata->dc_dc_phase > AD5755_DC_DC_PHASE_90_DEGREE ||
		pdata->dc_dc_freq > AD5755_DC_DC_FREQ_650kHZ ||
		pdata->dc_dc_maxv > AD5755_DC_DC_MAXV_29V5)
		return -EINVAL;

	val = pdata->dc_dc_maxv << AD5755_DC_DC_MAXV;
	val |= pdata->dc_dc_freq << AD5755_DC_DC_FREQ_SHIFT;
	val |= pdata->dc_dc_phase << AD5755_DC_DC_PHASE_SHIFT;
	if (pdata->ext_dc_dc_compenstation_resistor)
		val |= AD5755_EXT_DC_DC_COMP_RES;

	ret = FUNC3(indio_dev, 0, AD5755_CTRL_REG_DC_DC, val);
	if (ret < 0)
		return ret;

	for (i = 0; i < FUNC0(pdata->dac); ++i) {
		val = pdata->dac[i].slew.step_size <<
			AD5755_SLEW_STEP_SIZE_SHIFT;
		val |= pdata->dac[i].slew.rate <<
			AD5755_SLEW_RATE_SHIFT;
		if (pdata->dac[i].slew.enable)
			val |= AD5755_SLEW_ENABLE;

		ret = FUNC3(indio_dev, i,
					AD5755_CTRL_REG_SLEW, val);
		if (ret < 0)
			return ret;
	}

	for (i = 0; i < FUNC0(pdata->dac); ++i) {
		if (!FUNC1(st, pdata->dac[i].mode))
			return -EINVAL;

		val = 0;
		if (!pdata->dac[i].ext_current_sense_resistor)
			val |= AD5755_DAC_INT_CURRENT_SENSE_RESISTOR;
		if (pdata->dac[i].enable_voltage_overrange)
			val |= AD5755_DAC_VOLTAGE_OVERRANGE_EN;
		val |= pdata->dac[i].mode;

		ret = FUNC2(indio_dev, i, val, 0);
		if (ret < 0)
			return ret;
	}

	return 0;
}