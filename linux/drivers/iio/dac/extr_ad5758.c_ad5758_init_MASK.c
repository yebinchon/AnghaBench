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
struct TYPE_4__ {int /*<<< orphan*/  reg; } ;
struct ad5758_state {scalar_t__ slew_time; TYPE_2__ out_range; int /*<<< orphan*/  dc_dc_mode; int /*<<< orphan*/  dc_dc_ilim; int /*<<< orphan*/  gpio_reset; TYPE_1__* spi; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AD5758_DAC_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  AD5758_DAC_CONFIG_OUT_EN_MSK ; 
 int /*<<< orphan*/  AD5758_DIGITAL_DIAG_RESULTS ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ad5758_state*) ; 
 int FUNC4 (struct ad5758_state*) ; 
 int FUNC5 (struct ad5758_state*,int) ; 
 int FUNC6 (struct ad5758_state*) ; 
 int FUNC7 (struct ad5758_state*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct ad5758_state*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct ad5758_state*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct ad5758_state*) ; 
 int FUNC11 (struct ad5758_state*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct ad5758_state*,int /*<<< orphan*/ ,int) ; 
 int FUNC13 (struct ad5758_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct ad5758_state *st)
{
	int regval, ret;

	st->gpio_reset = FUNC14(&st->spi->dev, "reset",
						 GPIOD_OUT_HIGH);
	if (FUNC1(st->gpio_reset))
		return FUNC2(st->gpio_reset);

	/* Disable CRC checks */
	ret = FUNC4(st);
	if (ret < 0)
		return ret;

	/* Perform a reset */
	ret = FUNC6(st);
	if (ret < 0)
		return ret;

	/* Disable CRC checks */
	ret = FUNC4(st);
	if (ret < 0)
		return ret;

	/* Perform a calibration memory refresh */
	ret = FUNC3(st);
	if (ret < 0)
		return ret;

	regval = FUNC11(st, AD5758_DIGITAL_DIAG_RESULTS);
	if (regval < 0)
		return regval;

	/* Clear all the error flags */
	ret = FUNC12(st, AD5758_DIGITAL_DIAG_RESULTS, regval);
	if (ret < 0)
		return ret;

	/* Set the dc-to-dc current limit */
	ret = FUNC8(st, st->dc_dc_ilim);
	if (ret < 0)
		return ret;

	/* Configure the dc-to-dc controller mode */
	ret = FUNC7(st, st->dc_dc_mode);
	if (ret < 0)
		return ret;

	/* Configure the output range */
	ret = FUNC9(st, st->out_range.reg);
	if (ret < 0)
		return ret;

	/* Enable Slew Rate Control, set the slew rate clock and step */
	if (st->slew_time) {
		ret = FUNC10(st);
		if (ret < 0)
			return ret;
	}

	/* Power up the DAC and internal (INT) amplifiers */
	ret = FUNC5(st, 1);
	if (ret < 0)
		return ret;

	/* Enable VIOUT */
	return FUNC13(st, AD5758_DAC_CONFIG,
				     AD5758_DAC_CONFIG_OUT_EN_MSK,
				     FUNC0(1));
}