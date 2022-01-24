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
struct dma_fence {int /*<<< orphan*/  context; } ;
struct amdgpu_sync_entry {int explicit; int /*<<< orphan*/  fence; int /*<<< orphan*/  node; } ;
struct amdgpu_sync {int /*<<< orphan*/  fences; int /*<<< orphan*/  last_vm_update; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ AMDGPU_FENCE_OWNER_VM ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct amdgpu_sync*,struct dma_fence*,int) ; 
 scalar_t__ FUNC1 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct dma_fence*) ; 
 scalar_t__ FUNC3 (struct amdgpu_device*,struct dma_fence*) ; 
 int /*<<< orphan*/  amdgpu_sync_slab ; 
 int /*<<< orphan*/  FUNC4 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct amdgpu_sync_entry* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC7(struct amdgpu_device *adev, struct amdgpu_sync *sync,
		      struct dma_fence *f, bool explicit)
{
	struct amdgpu_sync_entry *e;

	if (!f)
		return 0;
	if (FUNC3(adev, f) &&
	    FUNC1(f) == AMDGPU_FENCE_OWNER_VM)
		FUNC2(&sync->last_vm_update, f);

	if (FUNC0(sync, f, explicit))
		return 0;

	e = FUNC6(amdgpu_sync_slab, GFP_KERNEL);
	if (!e)
		return -ENOMEM;

	e->explicit = explicit;

	FUNC5(sync->fences, &e->node, f->context);
	e->fence = FUNC4(f);
	return 0;
}