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
struct dc_i2c {int frequency; scalar_t__ regs; int /*<<< orphan*/  dev; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned long,int) ; 
 int EINVAL ; 
 scalar_t__ II_CLOCKTIME ; 
 scalar_t__ II_CONTROL ; 
 unsigned int II_CONTROL_LOCAL_RESET ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct dc_i2c *i2c)
{
	unsigned long clk_rate = FUNC1(i2c->clk);
	unsigned int clocktime;

	FUNC4(II_CONTROL_LOCAL_RESET, i2c->regs + II_CONTROL);
	FUNC3(100);
	FUNC4(0, i2c->regs + II_CONTROL);
	FUNC3(100);

	clocktime = FUNC0(clk_rate, 64 * i2c->frequency);
	if (clocktime < 1 || clocktime > 0xff) {
		FUNC2(i2c->dev, "can't set bus speed of %u Hz\n",
			i2c->frequency);
		return -EINVAL;
	}
	FUNC4(clocktime - 1, i2c->regs + II_CLOCKTIME);

	return 0;
}