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
struct sun4i_frontend {int /*<<< orphan*/  regs; int /*<<< orphan*/  reset; int /*<<< orphan*/  ram_clk; int /*<<< orphan*/  mod_clk; int /*<<< orphan*/  bus_clk; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SUN4I_FRONTEND_EN_EN ; 
 int /*<<< orphan*/  SUN4I_FRONTEND_EN_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 struct sun4i_frontend* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sun4i_frontend*) ; 

__attribute__((used)) static int FUNC7(struct device *dev)
{
	struct sun4i_frontend *frontend = FUNC3(dev);
	int ret;

	FUNC1(frontend->mod_clk, 300000000);

	FUNC0(frontend->bus_clk);
	FUNC0(frontend->mod_clk);
	FUNC0(frontend->ram_clk);

	ret = FUNC5(frontend->reset);
	if (ret) {
		FUNC2(dev, "Couldn't reset our device\n");
		return ret;
	}

	FUNC4(frontend->regs, SUN4I_FRONTEND_EN_REG,
			   SUN4I_FRONTEND_EN_EN,
			   SUN4I_FRONTEND_EN_EN);

	FUNC6(frontend);

	return 0;
}