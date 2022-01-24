#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  coherent_dma_mask; } ;
struct platform_device {TYPE_1__ dev; } ;
struct component_match {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct component_match*) ; 
 int FUNC2 (struct component_match*) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,struct component_match*) ; 
 struct component_match* FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  exynos_drm_ops ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct component_match *match;

	pdev->dev.coherent_dma_mask = FUNC0(32);

	match = FUNC4(&pdev->dev);
	if (FUNC1(match))
		return FUNC2(match);

	return FUNC3(&pdev->dev, &exynos_drm_ops,
					       match);
}