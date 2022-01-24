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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  base; } ;
struct gr2d {int /*<<< orphan*/  clk; TYPE_1__ client; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 struct gr2d* FUNC3 (struct platform_device*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct gr2d *gr2d = FUNC3(pdev);
	int err;

	err = FUNC2(&gr2d->client.base);
	if (err < 0) {
		FUNC1(&pdev->dev, "failed to unregister host1x client: %d\n",
			err);
		return err;
	}

	FUNC0(gr2d->clk);

	return 0;
}