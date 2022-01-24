#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_2__* spi; } ;
struct adis16480 {void* ext_clk; TYPE_3__ adis; int /*<<< orphan*/  clk_mode; TYPE_1__* chip_info; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {scalar_t__ has_pps_clk_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADIS16480_CLK_INT ; 
 int /*<<< orphan*/  ADIS16480_CLK_PPS ; 
 int /*<<< orphan*/  ADIS16480_CLK_SYNC ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC3 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC4(struct adis16480 *st)
{
	st->clk_mode = ADIS16480_CLK_INT;
	st->ext_clk = FUNC3(&st->adis.spi->dev, "sync");
	if (!FUNC0(st->ext_clk)) {
		st->clk_mode = ADIS16480_CLK_SYNC;
		return 0;
	}

	if (FUNC1(st->ext_clk) != -ENOENT) {
		FUNC2(&st->adis.spi->dev, "failed to get ext clk\n");
		return FUNC1(st->ext_clk);
	}

	if (st->chip_info->has_pps_clk_mode) {
		st->ext_clk = FUNC3(&st->adis.spi->dev, "pps");
		if (!FUNC0(st->ext_clk)) {
			st->clk_mode = ADIS16480_CLK_PPS;
			return 0;
		}

		if (FUNC1(st->ext_clk) != -ENOENT) {
			FUNC2(&st->adis.spi->dev, "failed to get ext clk\n");
			return FUNC1(st->ext_clk);
		}
	}

	return 0;
}