#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ttm_buffer_object {int /*<<< orphan*/  bdev; } ;
struct amdgpu_device {int /*<<< orphan*/  shadow_list_lock; } ;
struct TYPE_5__ {scalar_t__ import_attach; } ;
struct TYPE_4__ {TYPE_2__ base; int /*<<< orphan*/  sg; } ;
struct amdgpu_bo {scalar_t__ pin_count; struct amdgpu_bo* metadata; int /*<<< orphan*/  parent; int /*<<< orphan*/  shadow_list; TYPE_1__ tbo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct amdgpu_bo*) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_bo*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct amdgpu_device* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_bo*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct amdgpu_bo* FUNC11 (struct ttm_buffer_object*) ; 

__attribute__((used)) static void FUNC12(struct ttm_buffer_object *tbo)
{
	struct amdgpu_device *adev = FUNC3(tbo->bdev);
	struct amdgpu_bo *bo = FUNC11(tbo);

	if (bo->pin_count > 0)
		FUNC1(bo);

	FUNC0(bo);

	if (bo->tbo.base.import_attach)
		FUNC5(&bo->tbo.base, bo->tbo.sg);
	FUNC4(&bo->tbo.base);
	/* in case amdgpu_device_recover_vram got NULL of bo->parent */
	if (!FUNC8(&bo->shadow_list)) {
		FUNC9(&adev->shadow_list_lock);
		FUNC7(&bo->shadow_list);
		FUNC10(&adev->shadow_list_lock);
	}
	FUNC2(&bo->parent);

	FUNC6(bo->metadata);
	FUNC6(bo);
}