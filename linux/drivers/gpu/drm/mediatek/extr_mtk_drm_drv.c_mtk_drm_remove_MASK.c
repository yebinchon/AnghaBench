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
struct mtk_drm_private {int /*<<< orphan*/ * comp_node; int /*<<< orphan*/  mutex_node; } ;

/* Variables and functions */
 int DDP_COMPONENT_ID_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mtk_drm_ops ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct mtk_drm_private* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct mtk_drm_private *private = FUNC2(pdev);
	int i;

	FUNC0(&pdev->dev, &mtk_drm_ops);
	FUNC3(&pdev->dev);
	FUNC1(private->mutex_node);
	for (i = 0; i < DDP_COMPONENT_ID_MAX; i++)
		FUNC1(private->comp_node[i]);

	return 0;
}