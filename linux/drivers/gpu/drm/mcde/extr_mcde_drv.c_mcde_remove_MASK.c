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
struct mcde {int /*<<< orphan*/  epod; int /*<<< orphan*/  vana; int /*<<< orphan*/  mcde_clk; } ;
struct drm_device {struct mcde* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  mcde_drm_comp_ops ; 
 struct drm_device* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct drm_device *drm = FUNC3(pdev);
	struct mcde *mcde = drm->dev_private;

	FUNC1(&pdev->dev, &mcde_drm_comp_ops);
	FUNC0(mcde->mcde_clk);
	FUNC4(mcde->vana);
	FUNC4(mcde->epod);
	FUNC2(drm);

	return 0;
}