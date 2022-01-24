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
struct ad5758_state {int dc_dc_ilim; unsigned int dc_dc_mode; unsigned int slew_time; TYPE_1__* spi; } ;
typedef  int ad5758_range ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ AD5758_DCDC_MODE_DPC_VOLTAGE ; 
 unsigned int FUNC0 (int*) ; 
 int EINVAL ; 
 int* ad5758_current_range ; 
 int* ad5758_dc_dc_ilim ; 
 int FUNC1 (struct ad5758_state*,int const*,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int* ad5758_voltage_range ; 
 int* FUNC3 (unsigned int*,int*,unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmpfunc ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*,unsigned int*) ; 
 int FUNC7 (int /*<<< orphan*/ *,char*,unsigned int*,int) ; 

__attribute__((used)) static int FUNC8(struct ad5758_state *st)
{
	unsigned int tmp, tmparray[2], size;
	const struct ad5758_range *range;
	int *index, ret;

	st->dc_dc_ilim = 0;
	ret = FUNC6(&st->spi->dev,
				       "adi,dc-dc-ilim-microamp", &tmp);
	if (ret) {
		FUNC4(&st->spi->dev,
			"Missing \"dc-dc-ilim-microamp\" property\n");
	} else {
		index = FUNC3(&tmp, ad5758_dc_dc_ilim,
				FUNC0(ad5758_dc_dc_ilim),
				sizeof(int), cmpfunc);
		if (!index)
			FUNC4(&st->spi->dev, "dc-dc-ilim out of range\n");
		else
			st->dc_dc_ilim = index - ad5758_dc_dc_ilim;
	}

	ret = FUNC6(&st->spi->dev, "adi,dc-dc-mode",
				       &st->dc_dc_mode);
	if (ret) {
		FUNC5(&st->spi->dev, "Missing \"dc-dc-mode\" property\n");
		return ret;
	}

	if (!FUNC2(st->dc_dc_mode))
		return -EINVAL;

	if (st->dc_dc_mode == AD5758_DCDC_MODE_DPC_VOLTAGE) {
		ret = FUNC7(&st->spi->dev,
						     "adi,range-microvolt",
						     tmparray, 2);
		if (ret) {
			FUNC5(&st->spi->dev,
				"Missing \"range-microvolt\" property\n");
			return ret;
		}
		range = ad5758_voltage_range;
		size = FUNC0(ad5758_voltage_range);
	} else {
		ret = FUNC7(&st->spi->dev,
						     "adi,range-microamp",
						     tmparray, 2);
		if (ret) {
			FUNC5(&st->spi->dev,
				"Missing \"range-microamp\" property\n");
			return ret;
		}
		range = ad5758_current_range;
		size = FUNC0(ad5758_current_range);
	}

	ret = FUNC1(st, range, size, tmparray[0], tmparray[1]);
	if (ret) {
		FUNC5(&st->spi->dev, "range invalid\n");
		return ret;
	}

	ret = FUNC6(&st->spi->dev, "adi,slew-time-us", &tmp);
	if (ret) {
		FUNC4(&st->spi->dev, "Missing \"slew-time-us\" property\n");
		st->slew_time = 0;
	} else {
		st->slew_time = tmp;
	}

	return 0;
}