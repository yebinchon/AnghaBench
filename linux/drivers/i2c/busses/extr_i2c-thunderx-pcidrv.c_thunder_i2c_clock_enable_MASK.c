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
struct octeon_i2c {scalar_t__ sys_freq; int /*<<< orphan*/ * clk; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ SYS_FREQ_DEFAULT ; 
 scalar_t__ acpi_disabled ; 
 int /*<<< orphan*/ * FUNC1 (struct device*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,scalar_t__*) ; 

__attribute__((used)) static void FUNC5(struct device *dev, struct octeon_i2c *i2c)
{
	int ret;

	if (acpi_disabled) {
		/* DT */
		i2c->clk = FUNC1(dev, NULL);
		if (FUNC0(i2c->clk)) {
			i2c->clk = NULL;
			goto skip;
		}

		ret = FUNC3(i2c->clk);
		if (ret)
			goto skip;
		i2c->sys_freq = FUNC2(i2c->clk);
	} else {
		/* ACPI */
		FUNC4(dev, "sclk", &i2c->sys_freq);
	}

skip:
	if (!i2c->sys_freq)
		i2c->sys_freq = SYS_FREQ_DEFAULT;
}