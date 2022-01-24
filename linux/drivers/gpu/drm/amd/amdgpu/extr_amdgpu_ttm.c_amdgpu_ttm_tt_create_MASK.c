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
typedef  int /*<<< orphan*/  uint32_t ;
struct ttm_tt {int /*<<< orphan*/ * func; } ;
struct ttm_buffer_object {int /*<<< orphan*/  bdev; } ;
struct TYPE_2__ {struct ttm_tt ttm; } ;
struct amdgpu_ttm_tt {TYPE_1__ ttm; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  amdgpu_backend_func ; 
 struct amdgpu_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_ttm_tt*) ; 
 struct amdgpu_ttm_tt* FUNC2 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*,struct ttm_buffer_object*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ttm_tt *FUNC4(struct ttm_buffer_object *bo,
					   uint32_t page_flags)
{
	struct amdgpu_device *adev;
	struct amdgpu_ttm_tt *gtt;

	adev = FUNC0(bo->bdev);

	gtt = FUNC2(sizeof(struct amdgpu_ttm_tt), GFP_KERNEL);
	if (gtt == NULL) {
		return NULL;
	}
	gtt->ttm.ttm.func = &amdgpu_backend_func;

	/* allocate space for the uninitialized page entries */
	if (FUNC3(&gtt->ttm, bo, page_flags)) {
		FUNC1(gtt);
		return NULL;
	}
	return &gtt->ttm.ttm;
}