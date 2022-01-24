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
struct tegra_dsi {int /*<<< orphan*/  clk_parent; int /*<<< orphan*/  clk; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct clk* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct clk*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct tegra_dsi *dsi)
{
	struct clk *parent;
	int err;

	parent = FUNC0(dsi->clk);
	if (!parent)
		return -EINVAL;

	err = FUNC1(parent, dsi->clk_parent);
	if (err < 0)
		return err;

	return 0;
}