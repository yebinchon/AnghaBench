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
struct tegra_sor {int /*<<< orphan*/  clk; int /*<<< orphan*/  clk_out; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct clk*) ; 

__attribute__((used)) static int FUNC3(struct tegra_sor *sor, struct clk *parent)
{
	int err;

	FUNC0(sor->clk);

	err = FUNC2(sor->clk_out, parent);
	if (err < 0)
		return err;

	err = FUNC1(sor->clk);
	if (err < 0)
		return err;

	return 0;
}