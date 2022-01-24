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
struct ad5758_state {TYPE_1__* spi; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AD5758_CAL_MEM_UNREFRESHED_MSK ; 
 int /*<<< orphan*/  AD5758_DIGITAL_DIAG_RESULTS ; 
 int /*<<< orphan*/  AD5758_KEY ; 
 int /*<<< orphan*/  AD5758_KEY_CODE_CALIB_MEM_REFRESH ; 
 int FUNC0 (struct ad5758_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ad5758_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC3(struct ad5758_state *st)
{
	int ret;

	ret = FUNC0(st, AD5758_KEY,
				   AD5758_KEY_CODE_CALIB_MEM_REFRESH);
	if (ret < 0) {
		FUNC2(&st->spi->dev,
			"Failed to initiate a calibration memory refresh\n");
		return ret;
	}

	/* Wait to allow time for the internal calibrations to complete */
	return FUNC1(st, AD5758_DIGITAL_DIAG_RESULTS,
					     AD5758_CAL_MEM_UNREFRESHED_MSK);
}