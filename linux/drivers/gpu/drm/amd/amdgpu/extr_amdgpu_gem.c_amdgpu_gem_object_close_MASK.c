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
struct ww_acquire_ctx {int dummy; } ;
struct ttm_validate_buffer {int num_shared; int /*<<< orphan*/  head; TYPE_1__* bo; } ;
struct list_head {int dummy; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {struct amdgpu_fpriv* driver_priv; } ;
struct dma_fence {int dummy; } ;
struct amdgpu_vm {int dummy; } ;
struct amdgpu_fpriv {struct amdgpu_vm vm; } ;
struct amdgpu_device {int /*<<< orphan*/  dev; } ;
struct amdgpu_bo_va {scalar_t__ ref_count; } ;
struct amdgpu_bo_list_entry {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  bdev; } ;
struct amdgpu_bo {TYPE_1__ tbo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_bo*,struct dma_fence*,int) ; 
 struct amdgpu_device* FUNC2 (int /*<<< orphan*/ ) ; 
 struct amdgpu_bo_va* FUNC3 (struct amdgpu_vm*,struct amdgpu_bo*) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*,struct amdgpu_bo_va*) ; 
 int FUNC5 (struct amdgpu_device*,struct amdgpu_vm*,struct dma_fence**) ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_vm*,struct list_head*,struct amdgpu_bo_list_entry*) ; 
 scalar_t__ FUNC7 (struct amdgpu_vm*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct dma_fence*) ; 
 struct amdgpu_bo* FUNC10 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC12 (struct ww_acquire_ctx*,struct list_head*) ; 
 int FUNC13 (struct ww_acquire_ctx*,struct list_head*,int,struct list_head*,int) ; 
 scalar_t__ FUNC14 (int) ; 

void FUNC15(struct drm_gem_object *obj,
			     struct drm_file *file_priv)
{
	struct amdgpu_bo *bo = FUNC10(obj);
	struct amdgpu_device *adev = FUNC2(bo->tbo.bdev);
	struct amdgpu_fpriv *fpriv = file_priv->driver_priv;
	struct amdgpu_vm *vm = &fpriv->vm;

	struct amdgpu_bo_list_entry vm_pd;
	struct list_head list, duplicates;
	struct ttm_validate_buffer tv;
	struct ww_acquire_ctx ticket;
	struct amdgpu_bo_va *bo_va;
	int r;

	FUNC0(&list);
	FUNC0(&duplicates);

	tv.bo = &bo->tbo;
	tv.num_shared = 1;
	FUNC11(&tv.head, &list);

	FUNC6(vm, &list, &vm_pd);

	r = FUNC13(&ticket, &list, false, &duplicates, false);
	if (r) {
		FUNC8(adev->dev, "leaking bo va because "
			"we fail to reserve bo (%d)\n", r);
		return;
	}
	bo_va = FUNC3(vm, bo);
	if (bo_va && --bo_va->ref_count == 0) {
		FUNC4(adev, bo_va);

		if (FUNC7(vm)) {
			struct dma_fence *fence = NULL;

			r = FUNC5(adev, vm, &fence);
			if (FUNC14(r)) {
				FUNC8(adev->dev, "failed to clear page "
					"tables on GEM object close (%d)\n", r);
			}

			if (fence) {
				FUNC1(bo, fence, true);
				FUNC9(fence);
			}
		}
	}
	FUNC12(&ticket, &list);
}