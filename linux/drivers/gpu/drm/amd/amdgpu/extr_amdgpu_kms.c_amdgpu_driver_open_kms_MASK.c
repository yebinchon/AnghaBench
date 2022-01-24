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
typedef  int uint64_t ;
struct drm_file {struct amdgpu_fpriv* driver_priv; } ;
struct drm_device {int /*<<< orphan*/  dev; struct amdgpu_device* dev_private; } ;
struct amdgpu_fpriv {int /*<<< orphan*/  vm; int /*<<< orphan*/  ctx_mgr; int /*<<< orphan*/  bo_list_handles; int /*<<< orphan*/  bo_list_lock; int /*<<< orphan*/  csa_va; int /*<<< orphan*/  prt_va; } ;
struct TYPE_2__ {int /*<<< orphan*/  csa_obj; } ;
struct amdgpu_device {TYPE_1__ virt; int /*<<< orphan*/  dev; int /*<<< orphan*/  delayed_init_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMDGPU_CSA_SIZE ; 
 int AMDGPU_GMC_HOLE_MASK ; 
 int /*<<< orphan*/  AMDGPU_VM_CONTEXT_GFX ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct amdgpu_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ amdgpu_mcbp ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct amdgpu_device*,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct amdgpu_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct amdgpu_fpriv*) ; 
 struct amdgpu_fpriv* FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int) ; 

int FUNC19(struct drm_device *dev, struct drm_file *file_priv)
{
	struct amdgpu_device *adev = dev->dev_private;
	struct amdgpu_fpriv *fpriv;
	int r, pasid;

	/* Ensure IB tests are run on ring */
	FUNC10(&adev->delayed_init_work);

	file_priv->driver_priv = NULL;

	r = FUNC15(dev->dev);
	if (r < 0)
		return r;

	fpriv = FUNC13(sizeof(*fpriv), GFP_KERNEL);
	if (FUNC18(!fpriv)) {
		r = -ENOMEM;
		goto out_suspend;
	}

	pasid = FUNC3(16);
	if (pasid < 0) {
		FUNC9(adev->dev, "No more PASIDs available!");
		pasid = 0;
	}
	r = FUNC8(adev, &fpriv->vm, AMDGPU_VM_CONTEXT_GFX, pasid);
	if (r)
		goto error_pasid;

	fpriv->prt_va = FUNC6(adev, &fpriv->vm, NULL);
	if (!fpriv->prt_va) {
		r = -ENOMEM;
		goto error_vm;
	}

	if (amdgpu_mcbp || FUNC5(adev)) {
		uint64_t csa_addr = FUNC0(adev) & AMDGPU_GMC_HOLE_MASK;

		r = FUNC2(adev, &fpriv->vm, adev->virt.csa_obj,
						&fpriv->csa_va, csa_addr, AMDGPU_CSA_SIZE);
		if (r)
			goto error_vm;
	}

	FUNC14(&fpriv->bo_list_lock);
	FUNC11(&fpriv->bo_list_handles);

	FUNC1(&fpriv->ctx_mgr);

	file_priv->driver_priv = fpriv;
	goto out_suspend;

error_vm:
	FUNC7(adev, &fpriv->vm);

error_pasid:
	if (pasid)
		FUNC4(pasid);

	FUNC12(fpriv);

out_suspend:
	FUNC16(dev->dev);
	FUNC17(dev->dev);

	return r;
}