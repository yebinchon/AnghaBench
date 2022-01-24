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
struct rcar_lvds {int /*<<< orphan*/  dev; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  EPROBE_DEFER ; 
 int /*<<< orphan*/  FUNC0 (struct clk*) ; 
 int /*<<< orphan*/  FUNC1 (struct clk*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*) ; 
 struct clk* FUNC3 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static struct clk *FUNC4(struct rcar_lvds *lvds, const char *name,
				       bool optional)
{
	struct clk *clk;

	clk = FUNC3(lvds->dev, name);
	if (!FUNC0(clk))
		return clk;

	if (FUNC1(clk) == -ENOENT && optional)
		return NULL;

	if (FUNC1(clk) != -EPROBE_DEFER)
		FUNC2(lvds->dev, "failed to get %s clock\n",
			name ? name : "module");

	return clk;
}