#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct radeon_vm {scalar_t__ ib_bo_va; } ;
struct radeon_fpriv {struct radeon_vm vm; } ;
struct TYPE_4__ {int /*<<< orphan*/  bo; } ;
struct TYPE_3__ {int /*<<< orphan*/  mutex; } ;
struct radeon_device {scalar_t__ family; TYPE_2__ ring_tmp_bo; scalar_t__ accel_working; TYPE_1__ gem; struct drm_file* cmask_filp; struct drm_file* hyperz_filp; } ;
struct drm_file {struct radeon_fpriv* driver_priv; } ;
struct drm_device {int /*<<< orphan*/  dev; struct radeon_device* dev_private; } ;

/* Variables and functions */
 scalar_t__ CHIP_CAYMAN ; 
 int /*<<< orphan*/  FUNC0 (struct radeon_fpriv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*,struct drm_file*) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_device*,struct drm_file*) ; 
 int /*<<< orphan*/  FUNC10 (struct radeon_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct radeon_device*,struct radeon_vm*) ; 

void FUNC12(struct drm_device *dev,
				 struct drm_file *file_priv)
{
	struct radeon_device *rdev = dev->dev_private;

	FUNC3(dev->dev);

	FUNC1(&rdev->gem.mutex);
	if (rdev->hyperz_filp == file_priv)
		rdev->hyperz_filp = NULL;
	if (rdev->cmask_filp == file_priv)
		rdev->cmask_filp = NULL;
	FUNC2(&rdev->gem.mutex);

	FUNC8(rdev, file_priv);
	FUNC9(rdev, file_priv);

	/* new gpu have virtual address space support */
	if (rdev->family >= CHIP_CAYMAN && file_priv->driver_priv) {
		struct radeon_fpriv *fpriv = file_priv->driver_priv;
		struct radeon_vm *vm = &fpriv->vm;
		int r;

		if (rdev->accel_working) {
			r = FUNC6(rdev->ring_tmp_bo.bo, false);
			if (!r) {
				if (vm->ib_bo_va)
					FUNC10(rdev, vm->ib_bo_va);
				FUNC7(rdev->ring_tmp_bo.bo);
			}
			FUNC11(rdev, vm);
		}

		FUNC0(fpriv);
		file_priv->driver_priv = NULL;
	}
	FUNC4(dev->dev);
	FUNC5(dev->dev);
}