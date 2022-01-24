#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct venc_device {struct clk* tv_dac_clk; TYPE_1__* pdev; scalar_t__ requires_tv_dac_clk; } ;
struct clk {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct clk*) ; 
 int FUNC2 (struct clk*) ; 
 struct clk* FUNC3 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC4(struct venc_device *venc)
{
	struct clk *clk;

	if (venc->requires_tv_dac_clk) {
		clk = FUNC3(&venc->pdev->dev, "tv_dac_clk");
		if (FUNC1(clk)) {
			FUNC0("can't get tv_dac_clk\n");
			return FUNC2(clk);
		}
	} else {
		clk = NULL;
	}

	venc->tv_dac_clk = clk;

	return 0;
}