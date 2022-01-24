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
typedef  int u32 ;
struct titsc {int coordinate_readouts; int /*<<< orphan*/  input; int /*<<< orphan*/  mfd_tscadc; int /*<<< orphan*/  irq; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct titsc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct titsc*) ; 
 struct titsc* FUNC6 (struct platform_device*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct titsc *ts_dev = FUNC6(pdev);
	u32 steps;

	FUNC1(&pdev->dev);
	FUNC2(&pdev->dev, false);
	FUNC3(ts_dev->irq, ts_dev);

	/* total steps followed by the enable mask */
	steps = 2 * ts_dev->coordinate_readouts + 2;
	steps = (1 << steps) - 1;
	FUNC0(ts_dev->mfd_tscadc, steps);

	FUNC4(ts_dev->input);

	FUNC5(ts_dev);
	return 0;
}