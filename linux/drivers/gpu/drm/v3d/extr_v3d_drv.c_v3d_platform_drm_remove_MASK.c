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
struct v3d_dev {int /*<<< orphan*/  mmu_scratch_paddr; int /*<<< orphan*/  mmu_scratch; int /*<<< orphan*/  dev; } ;
struct platform_device {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 struct drm_device* FUNC3 (struct platform_device*) ; 
 struct v3d_dev* FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct drm_device *drm = FUNC3(pdev);
	struct v3d_dev *v3d = FUNC4(drm);

	FUNC2(drm);

	FUNC5(drm);

	FUNC1(drm);

	FUNC0(v3d->dev, 4096, v3d->mmu_scratch, v3d->mmu_scratch_paddr);

	return 0;
}