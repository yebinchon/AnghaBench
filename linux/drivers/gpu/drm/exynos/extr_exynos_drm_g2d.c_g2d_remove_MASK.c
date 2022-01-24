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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct g2d_data {int /*<<< orphan*/  runqueue_slab; int /*<<< orphan*/  g2d_workq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g2d_component_ops ; 
 int /*<<< orphan*/  FUNC2 (struct g2d_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct g2d_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct g2d_data* FUNC5 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct g2d_data *g2d = FUNC5(pdev);

	FUNC0(&pdev->dev, &g2d_component_ops);

	/* There should be no locking needed here. */
	FUNC3(g2d, NULL);

	FUNC7(&pdev->dev);
	FUNC6(&pdev->dev);

	FUNC2(g2d);
	FUNC1(g2d->g2d_workq);
	FUNC4(g2d->runqueue_slab);

	return 0;
}