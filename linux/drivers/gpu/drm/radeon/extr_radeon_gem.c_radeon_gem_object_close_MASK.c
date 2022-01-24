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
struct radeon_vm {int dummy; } ;
struct radeon_fpriv {struct radeon_vm vm; } ;
struct radeon_device {scalar_t__ family; int /*<<< orphan*/  dev; int /*<<< orphan*/  accel_working; } ;
struct radeon_bo_va {scalar_t__ ref_count; } ;
struct radeon_bo {struct radeon_device* rdev; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {struct radeon_fpriv* driver_priv; } ;

/* Variables and functions */
 scalar_t__ CHIP_CAYMAN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 struct radeon_bo* FUNC1 (struct drm_gem_object*) ; 
 int FUNC2 (struct radeon_bo*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_bo*) ; 
 struct radeon_bo_va* FUNC4 (struct radeon_vm*,struct radeon_bo*) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*,struct radeon_bo_va*) ; 

void FUNC6(struct drm_gem_object *obj,
			     struct drm_file *file_priv)
{
	struct radeon_bo *rbo = FUNC1(obj);
	struct radeon_device *rdev = rbo->rdev;
	struct radeon_fpriv *fpriv = file_priv->driver_priv;
	struct radeon_vm *vm = &fpriv->vm;
	struct radeon_bo_va *bo_va;
	int r;

	if ((rdev->family < CHIP_CAYMAN) ||
	    (!rdev->accel_working)) {
		return;
	}

	r = FUNC2(rbo, true);
	if (r) {
		FUNC0(rdev->dev, "leaking bo va because "
			"we fail to reserve bo (%d)\n", r);
		return;
	}
	bo_va = FUNC4(vm, rbo);
	if (bo_va) {
		if (--bo_va->ref_count == 0) {
			FUNC5(rdev, bo_va);
		}
	}
	FUNC3(rbo);
}