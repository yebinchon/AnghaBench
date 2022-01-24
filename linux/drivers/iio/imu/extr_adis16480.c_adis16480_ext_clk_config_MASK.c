#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int uint16_t ;
struct device_node {int dummy; } ;
struct TYPE_7__ {TYPE_1__* spi; } ;
struct adis16480 {int /*<<< orphan*/  ext_clk; TYPE_3__ adis; int /*<<< orphan*/  clk_mode; TYPE_2__* chip_info; } ;
typedef  enum adis16480_int_pin { ____Placeholder_adis16480_int_pin } adis16480_int_pin ;
struct TYPE_6__ {scalar_t__ has_pps_clk_mode; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  ADIS16480_REG_FNCTIO_CTRL ; 
 unsigned int FUNC1 (int) ; 
 unsigned int ADIS16480_SYNC_EN_MSK ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int ADIS16480_SYNC_MODE_MSK ; 
 unsigned int FUNC3 (int) ; 
 unsigned int ADIS16480_SYNC_SEL_MSK ; 
 int FUNC4 (struct adis16480*,struct device_node*) ; 
 int FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static int FUNC9(struct adis16480 *st,
				    struct device_node *of_node,
				    bool enable)
{
	unsigned int mode, mask;
	enum adis16480_int_pin pin;
	uint16_t val;
	int ret;

	ret = FUNC5(&st->adis, ADIS16480_REG_FNCTIO_CTRL, &val);
	if (ret < 0)
		return ret;

	pin = FUNC4(st, of_node);
	/*
	 * Each DIOx pin supports only one function at a time. When a single pin
	 * has two assignments, the enable bit for a lower priority function
	 * automatically resets to zero (disabling the lower priority function).
	 */
	if (pin == FUNC0(val))
		FUNC8(&st->adis.spi->dev,
			"DIO%x pin supports only one function at a time\n",
			pin + 1);

	mode = FUNC1(enable) | FUNC3(pin);
	mask = ADIS16480_SYNC_EN_MSK | ADIS16480_SYNC_SEL_MSK;
	/* Only ADIS1649x devices support pps ext clock mode */
	if (st->chip_info->has_pps_clk_mode) {
		mode |= FUNC2(st->clk_mode);
		mask |= ADIS16480_SYNC_MODE_MSK;
	}

	val &= ~mask;
	val |= mode;

	ret = FUNC6(&st->adis, ADIS16480_REG_FNCTIO_CTRL, val);
	if (ret < 0)
		return ret;

	return FUNC7(st->ext_clk);
}