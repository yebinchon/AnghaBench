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
struct sa11x0_dma_dev {int /*<<< orphan*/  base; int /*<<< orphan*/  task; int /*<<< orphan*/ * phy; int /*<<< orphan*/  slave; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 unsigned int NR_PHY_CHAN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sa11x0_dma_dev*) ; 
 struct sa11x0_dma_dev* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct sa11x0_dma_dev *d = FUNC3(pdev);
	unsigned pch;

	FUNC0(&d->slave);

	FUNC4(&d->slave);
	for (pch = 0; pch < NR_PHY_CHAN; pch++)
		FUNC5(pdev, pch, &d->phy[pch]);
	FUNC6(&d->task);
	FUNC1(d->base);
	FUNC2(d);

	return 0;
}