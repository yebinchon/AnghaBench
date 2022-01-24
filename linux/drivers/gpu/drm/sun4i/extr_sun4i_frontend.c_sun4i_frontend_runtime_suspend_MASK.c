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
struct sun4i_frontend {int /*<<< orphan*/  reset; int /*<<< orphan*/  bus_clk; int /*<<< orphan*/  mod_clk; int /*<<< orphan*/  ram_clk; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct sun4i_frontend* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct device *dev)
{
	struct sun4i_frontend *frontend = FUNC1(dev);

	FUNC0(frontend->ram_clk);
	FUNC0(frontend->mod_clk);
	FUNC0(frontend->bus_clk);

	FUNC2(frontend->reset);

	return 0;
}