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
struct ad5761_state {int use_intref; int vref; int /*<<< orphan*/ * vref_reg; TYPE_1__* spi; } ;
struct ad5761_chip_info {int int_vref; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct ad5761_state *st,
			   const struct ad5761_chip_info *chip_info)
{
	int ret;

	st->vref_reg = FUNC4(&st->spi->dev, "vref");
	if (FUNC1(st->vref_reg) == -ENODEV) {
		/* Use Internal regulator */
		if (!chip_info->int_vref) {
			FUNC2(&st->spi->dev,
				"Voltage reference not found\n");
			return -EIO;
		}

		st->use_intref = true;
		st->vref = chip_info->int_vref;
		return 0;
	}

	if (FUNC0(st->vref_reg)) {
		FUNC2(&st->spi->dev,
			"Error getting voltage reference regulator\n");
		return FUNC1(st->vref_reg);
	}

	ret = FUNC6(st->vref_reg);
	if (ret) {
		FUNC2(&st->spi->dev,
			 "Failed to enable voltage reference\n");
		return ret;
	}

	ret = FUNC7(st->vref_reg);
	if (ret < 0) {
		FUNC2(&st->spi->dev,
			 "Failed to get voltage reference value\n");
		goto disable_regulator_vref;
	}

	if (ret < 2000000 || ret > 3000000) {
		FUNC3(&st->spi->dev,
			 "Invalid external voltage ref. value %d uV\n", ret);
		ret = -EIO;
		goto disable_regulator_vref;
	}

	st->vref = ret / 1000;
	st->use_intref = false;

	return 0;

disable_regulator_vref:
	FUNC5(st->vref_reg);
	st->vref_reg = NULL;
	return ret;
}