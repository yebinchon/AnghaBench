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
struct amdgpu_device {int /*<<< orphan*/  gart_pin_size; int /*<<< orphan*/  visible_pin_size; int /*<<< orphan*/  vram_pin_size; } ;
struct TYPE_4__ {scalar_t__ mem_type; } ;
struct TYPE_3__ {TYPE_2__ mem; int /*<<< orphan*/  bdev; } ;
struct amdgpu_bo {TYPE_1__ tbo; } ;

/* Variables and functions */
 scalar_t__ TTM_PL_TT ; 
 scalar_t__ TTM_PL_VRAM ; 
 int /*<<< orphan*/  FUNC0 (struct amdgpu_bo*) ; 
 struct amdgpu_device* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_bo*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct amdgpu_bo *bo)
{
	struct amdgpu_device *adev = FUNC1(bo->tbo.bdev);

	if (bo->tbo.mem.mem_type == TTM_PL_VRAM) {
		FUNC3(FUNC0(bo), &adev->vram_pin_size);
		FUNC3(FUNC2(bo),
			     &adev->visible_pin_size);
	} else if (bo->tbo.mem.mem_type == TTM_PL_TT) {
		FUNC3(FUNC0(bo), &adev->gart_pin_size);
	}
}