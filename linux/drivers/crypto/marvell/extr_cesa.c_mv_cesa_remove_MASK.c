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
struct platform_device {int dummy; } ;
struct mv_cesa_dev {TYPE_2__* engines; TYPE_1__* caps; } ;
struct TYPE_4__ {int /*<<< orphan*/  clk; int /*<<< orphan*/  zclk; } ;
struct TYPE_3__ {int nengines; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct platform_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mv_cesa_dev*) ; 
 struct mv_cesa_dev* FUNC3 (struct platform_device*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct mv_cesa_dev *cesa = FUNC3(pdev);
	int i;

	FUNC2(cesa);

	for (i = 0; i < cesa->caps->nengines; i++) {
		FUNC0(cesa->engines[i].zclk);
		FUNC0(cesa->engines[i].clk);
		FUNC1(pdev, i);
	}

	return 0;
}