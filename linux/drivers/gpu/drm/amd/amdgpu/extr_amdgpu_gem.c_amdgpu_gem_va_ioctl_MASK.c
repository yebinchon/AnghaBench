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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;
struct ww_acquire_ctx {int dummy; } ;
struct ttm_validate_buffer {int num_shared; int /*<<< orphan*/  head; int /*<<< orphan*/ * bo; } ;
struct list_head {int dummy; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {struct amdgpu_fpriv* driver_priv; } ;
struct drm_device {TYPE_1__* pdev; struct amdgpu_device* dev_private; } ;
struct drm_amdgpu_gem_va {int const flags; int operation; int /*<<< orphan*/  map_size; int /*<<< orphan*/  offset_in_bo; int /*<<< orphan*/  va_address; int /*<<< orphan*/  handle; } ;
struct amdgpu_fpriv {int /*<<< orphan*/  vm; struct amdgpu_bo_va* prt_va; } ;
struct amdgpu_device {int dummy; } ;
struct amdgpu_bo_va {int dummy; } ;
struct amdgpu_bo_list_entry {int dummy; } ;
struct amdgpu_bo {int flags; int /*<<< orphan*/  tbo; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int AMDGPU_GEM_CREATE_VM_ALWAYS_VALID ; 
 int /*<<< orphan*/  AMDGPU_GMC_HOLE_END ; 
 int /*<<< orphan*/  AMDGPU_GMC_HOLE_MASK ; 
 int /*<<< orphan*/  AMDGPU_GMC_HOLE_START ; 
#define  AMDGPU_VA_OP_CLEAR 131 
#define  AMDGPU_VA_OP_MAP 130 
#define  AMDGPU_VA_OP_REPLACE 129 
#define  AMDGPU_VA_OP_UNMAP 128 
 int /*<<< orphan*/  AMDGPU_VA_RESERVED_SIZE ; 
 int AMDGPU_VM_DELAY_UPDATE ; 
 int AMDGPU_VM_MTYPE_MASK ; 
 int AMDGPU_VM_PAGE_EXECUTABLE ; 
 int AMDGPU_VM_PAGE_PRT ; 
 int AMDGPU_VM_PAGE_READABLE ; 
 int AMDGPU_VM_PAGE_WRITEABLE ; 
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*,int /*<<< orphan*/ *,struct amdgpu_bo_va*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*,int) ; 
 int FUNC3 (struct amdgpu_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct amdgpu_bo_va* FUNC4 (int /*<<< orphan*/ *,struct amdgpu_bo*) ; 
 int FUNC5 (struct amdgpu_device*,struct amdgpu_bo_va*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct amdgpu_device*,struct amdgpu_bo_va*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct amdgpu_device*,struct amdgpu_bo_va*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  amdgpu_vm_debug ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct list_head*,struct amdgpu_bo_list_entry*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int const,...) ; 
 struct drm_gem_object* FUNC10 (struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_gem_object*) ; 
 struct amdgpu_bo* FUNC12 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC14 (struct ww_acquire_ctx*,struct list_head*) ; 
 int FUNC15 (struct ww_acquire_ctx*,struct list_head*,int,struct list_head*,int) ; 

int FUNC16(struct drm_device *dev, void *data,
			  struct drm_file *filp)
{
	const uint32_t valid_flags = AMDGPU_VM_DELAY_UPDATE |
		AMDGPU_VM_PAGE_READABLE | AMDGPU_VM_PAGE_WRITEABLE |
		AMDGPU_VM_PAGE_EXECUTABLE | AMDGPU_VM_MTYPE_MASK;
	const uint32_t prt_flags = AMDGPU_VM_DELAY_UPDATE |
		AMDGPU_VM_PAGE_PRT;

	struct drm_amdgpu_gem_va *args = data;
	struct drm_gem_object *gobj;
	struct amdgpu_device *adev = dev->dev_private;
	struct amdgpu_fpriv *fpriv = filp->driver_priv;
	struct amdgpu_bo *abo;
	struct amdgpu_bo_va *bo_va;
	struct amdgpu_bo_list_entry vm_pd;
	struct ttm_validate_buffer tv;
	struct ww_acquire_ctx ticket;
	struct list_head list, duplicates;
	uint64_t va_flags;
	int r = 0;

	if (args->va_address < AMDGPU_VA_RESERVED_SIZE) {
		FUNC9(&dev->pdev->dev,
			"va_address 0x%LX is in reserved area 0x%LX\n",
			args->va_address, AMDGPU_VA_RESERVED_SIZE);
		return -EINVAL;
	}

	if (args->va_address >= AMDGPU_GMC_HOLE_START &&
	    args->va_address < AMDGPU_GMC_HOLE_END) {
		FUNC9(&dev->pdev->dev,
			"va_address 0x%LX is in VA hole 0x%LX-0x%LX\n",
			args->va_address, AMDGPU_GMC_HOLE_START,
			AMDGPU_GMC_HOLE_END);
		return -EINVAL;
	}

	args->va_address &= AMDGPU_GMC_HOLE_MASK;

	if ((args->flags & ~valid_flags) && (args->flags & ~prt_flags)) {
		FUNC9(&dev->pdev->dev, "invalid flags combination 0x%08X\n",
			args->flags);
		return -EINVAL;
	}

	switch (args->operation) {
	case AMDGPU_VA_OP_MAP:
	case AMDGPU_VA_OP_UNMAP:
	case AMDGPU_VA_OP_CLEAR:
	case AMDGPU_VA_OP_REPLACE:
		break;
	default:
		FUNC9(&dev->pdev->dev, "unsupported operation %d\n",
			args->operation);
		return -EINVAL;
	}

	FUNC0(&list);
	FUNC0(&duplicates);
	if ((args->operation != AMDGPU_VA_OP_CLEAR) &&
	    !(args->flags & AMDGPU_VM_PAGE_PRT)) {
		gobj = FUNC10(filp, args->handle);
		if (gobj == NULL)
			return -ENOENT;
		abo = FUNC12(gobj);
		tv.bo = &abo->tbo;
		if (abo->flags & AMDGPU_GEM_CREATE_VM_ALWAYS_VALID)
			tv.num_shared = 1;
		else
			tv.num_shared = 0;
		FUNC13(&tv.head, &list);
	} else {
		gobj = NULL;
		abo = NULL;
	}

	FUNC8(&fpriv->vm, &list, &vm_pd);

	r = FUNC15(&ticket, &list, true, &duplicates, false);
	if (r)
		goto error_unref;

	if (abo) {
		bo_va = FUNC4(&fpriv->vm, abo);
		if (!bo_va) {
			r = -ENOENT;
			goto error_backoff;
		}
	} else if (args->operation != AMDGPU_VA_OP_CLEAR) {
		bo_va = fpriv->prt_va;
	} else {
		bo_va = NULL;
	}

	switch (args->operation) {
	case AMDGPU_VA_OP_MAP:
		va_flags = FUNC2(adev, args->flags);
		r = FUNC5(adev, bo_va, args->va_address,
				     args->offset_in_bo, args->map_size,
				     va_flags);
		break;
	case AMDGPU_VA_OP_UNMAP:
		r = FUNC7(adev, bo_va, args->va_address);
		break;

	case AMDGPU_VA_OP_CLEAR:
		r = FUNC3(adev, &fpriv->vm,
						args->va_address,
						args->map_size);
		break;
	case AMDGPU_VA_OP_REPLACE:
		va_flags = FUNC2(adev, args->flags);
		r = FUNC6(adev, bo_va, args->va_address,
					     args->offset_in_bo, args->map_size,
					     va_flags);
		break;
	default:
		break;
	}
	if (!r && !(args->flags & AMDGPU_VM_DELAY_UPDATE) && !amdgpu_vm_debug)
		FUNC1(adev, &fpriv->vm, bo_va,
					args->operation);

error_backoff:
	FUNC14(&ticket, &list);

error_unref:
	FUNC11(gobj);
	return r;
}