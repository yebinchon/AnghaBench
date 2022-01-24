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
struct nouveau_drm {struct drm_device* dev; } ;
struct drm_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void
FUNC7(struct nouveau_drm *drm)
{
	struct drm_device *dev = drm->dev;
	bool runtime = FUNC2();

	/* only relevant for PCI devices */
	if (!dev->pdev)
		return;

	FUNC4(dev->pdev, NULL, NULL, NULL);

	if (FUNC3(dev->pdev))
		return;

	FUNC6(dev->pdev);
	if (runtime && FUNC1() && !FUNC0())
		FUNC5(drm->dev->dev);
}