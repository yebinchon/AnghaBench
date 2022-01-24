#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct dss_device {struct clk* parent_clk; TYPE_2__* feat; struct clk* dss_clk; TYPE_1__* pdev; } ;
struct clk {int dummy; } ;
struct TYPE_4__ {scalar_t__ parent_clk_name; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (struct clk*) ; 
 int FUNC2 (struct clk*) ; 
 struct clk* FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct clk* FUNC4 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC5(struct dss_device *dss)
{
	struct clk *clk;

	clk = FUNC4(&dss->pdev->dev, "fck");
	if (FUNC1(clk)) {
		FUNC0("can't get clock fck\n");
		return FUNC2(clk);
	}

	dss->dss_clk = clk;

	if (dss->feat->parent_clk_name) {
		clk = FUNC3(NULL, dss->feat->parent_clk_name);
		if (FUNC1(clk)) {
			FUNC0("Failed to get %s\n",
			       dss->feat->parent_clk_name);
			return FUNC2(clk);
		}
	} else {
		clk = NULL;
	}

	dss->parent_clk = clk;

	return 0;
}