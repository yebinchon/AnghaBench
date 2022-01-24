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
struct TYPE_2__ {int op; } ;
union drm_amdgpu_vm {TYPE_1__ in; } ;
struct drm_file {struct amdgpu_fpriv* driver_priv; } ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct amdgpu_fpriv {int /*<<< orphan*/  vm; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMDGPU_GFXHUB_0 ; 
#define  AMDGPU_VM_OP_RESERVE_VMID 129 
#define  AMDGPU_VM_OP_UNRESERVE_VMID 128 
 int EINVAL ; 
 int FUNC0 (struct amdgpu_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC2(struct drm_device *dev, void *data, struct drm_file *filp)
{
	union drm_amdgpu_vm *args = data;
	struct amdgpu_device *adev = dev->dev_private;
	struct amdgpu_fpriv *fpriv = filp->driver_priv;
	int r;

	switch (args->in.op) {
	case AMDGPU_VM_OP_RESERVE_VMID:
		/* current, we only have requirement to reserve vmid from gfxhub */
		r = FUNC0(adev, &fpriv->vm, AMDGPU_GFXHUB_0);
		if (r)
			return r;
		break;
	case AMDGPU_VM_OP_UNRESERVE_VMID:
		FUNC1(adev, &fpriv->vm, AMDGPU_GFXHUB_0);
		break;
	default:
		return -EINVAL;
	}

	return 0;
}