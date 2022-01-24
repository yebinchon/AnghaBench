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
struct drm_vram_mm {int dummy; } ;
struct drm_device {int /*<<< orphan*/  pdev; } ;
struct ast_private {int /*<<< orphan*/  fb_mtrr; int /*<<< orphan*/  vram_size; struct drm_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ FUNC1 (struct drm_vram_mm*) ; 
 int FUNC2 (struct drm_vram_mm*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  drm_gem_vram_mm_funcs ; 
 struct drm_vram_mm* FUNC5 (struct drm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC8(struct ast_private *ast)
{
	struct drm_vram_mm *vmm;
	int ret;
	struct drm_device *dev = ast->dev;

	vmm = FUNC5(
		dev, FUNC7(dev->pdev, 0),
		ast->vram_size, &drm_gem_vram_mm_funcs);
	if (FUNC1(vmm)) {
		ret = FUNC2(vmm);
		FUNC0("Error initializing VRAM MM; %d\n", ret);
		return ret;
	}

	FUNC3(FUNC7(dev->pdev, 0),
				   FUNC6(dev->pdev, 0));
	ast->fb_mtrr = FUNC4(FUNC7(dev->pdev, 0),
					FUNC6(dev->pdev, 0));

	return 0;
}