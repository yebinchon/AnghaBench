#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct radeon_vm {int /*<<< orphan*/  ib_bo_va; } ;
struct radeon_fpriv {struct radeon_vm vm; } ;
struct TYPE_2__ {int /*<<< orphan*/  bo; } ;
struct radeon_device {scalar_t__ family; TYPE_1__ ring_tmp_bo; scalar_t__ accel_working; } ;
struct drm_file {struct radeon_fpriv* driver_priv; } ;
struct drm_device {int /*<<< orphan*/  dev; struct radeon_device* dev_private; } ;

/* Variables and functions */
 scalar_t__ CHIP_CAYMAN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  RADEON_VA_IB_OFFSET ; 
 int RADEON_VM_PAGE_READABLE ; 
 int RADEON_VM_PAGE_SNOOPED ; 
 int /*<<< orphan*/  FUNC0 (struct radeon_fpriv*) ; 
 struct radeon_fpriv* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*,struct radeon_vm*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct radeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*,struct radeon_vm*) ; 
 int FUNC9 (struct radeon_device*,struct radeon_vm*) ; 
 scalar_t__ FUNC10 (int) ; 

int FUNC11(struct drm_device *dev, struct drm_file *file_priv)
{
	struct radeon_device *rdev = dev->dev_private;
	int r;

	file_priv->driver_priv = NULL;

	r = FUNC2(dev->dev);
	if (r < 0)
		return r;

	/* new gpu have virtual address space support */
	if (rdev->family >= CHIP_CAYMAN) {
		struct radeon_fpriv *fpriv;
		struct radeon_vm *vm;

		fpriv = FUNC1(sizeof(*fpriv), GFP_KERNEL);
		if (FUNC10(!fpriv)) {
			r = -ENOMEM;
			goto out_suspend;
		}

		if (rdev->accel_working) {
			vm = &fpriv->vm;
			r = FUNC9(rdev, vm);
			if (r) {
				FUNC0(fpriv);
				goto out_suspend;
			}

			r = FUNC5(rdev->ring_tmp_bo.bo, false);
			if (r) {
				FUNC8(rdev, vm);
				FUNC0(fpriv);
				goto out_suspend;
			}

			/* map the ib pool buffer read only into
			 * virtual address space */
			vm->ib_bo_va = FUNC6(rdev, vm,
							rdev->ring_tmp_bo.bo);
			r = FUNC7(rdev, vm->ib_bo_va,
						  RADEON_VA_IB_OFFSET,
						  RADEON_VM_PAGE_READABLE |
						  RADEON_VM_PAGE_SNOOPED);
			if (r) {
				FUNC8(rdev, vm);
				FUNC0(fpriv);
				goto out_suspend;
			}
		}
		file_priv->driver_priv = fpriv;
	}

out_suspend:
	FUNC3(dev->dev);
	FUNC4(dev->dev);
	return r;
}