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
struct nouveau_drm {int /*<<< orphan*/  vga_pm_domain; struct drm_device* dev; } ;
struct drm_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  nouveau_switcheroo_ops ; 
 int /*<<< orphan*/  nouveau_vga_set_decode ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct drm_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

void
FUNC7(struct nouveau_drm *drm)
{
	struct drm_device *dev = drm->dev;
	bool runtime = FUNC2();

	/* only relevant for PCI devices */
	if (!dev->pdev)
		return;

	FUNC4(dev->pdev, dev, NULL, nouveau_vga_set_decode);

	/* don't register Thunderbolt eGPU with vga_switcheroo */
	if (FUNC3(dev->pdev))
		return;

	FUNC6(dev->pdev, &nouveau_switcheroo_ops, runtime);

	if (runtime && FUNC1() && !FUNC0())
		FUNC5(drm->dev->dev, &drm->vga_pm_domain);
}