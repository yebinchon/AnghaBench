#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ras_common_if {int dummy; } ;
struct ras_ih_if {struct ras_common_if head; } ;
struct TYPE_5__ {int /*<<< orphan*/  cp_table_ptr; int /*<<< orphan*/  cp_table_gpu_addr; int /*<<< orphan*/  cp_table_obj; int /*<<< orphan*/  clear_state_obj; } ;
struct TYPE_4__ {int /*<<< orphan*/  irq; int /*<<< orphan*/  ring; } ;
struct TYPE_6__ {int num_gfx_rings; int num_compute_rings; TYPE_2__ rlc; TYPE_1__ kiq; int /*<<< orphan*/ * compute_ring; int /*<<< orphan*/ * gfx_ring; struct ras_common_if* ras_if; } ;
struct amdgpu_device {scalar_t__ asic_type; TYPE_3__ gfx; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMDGPU_RAS_BLOCK__GFX ; 
 scalar_t__ CHIP_RAVEN ; 
 scalar_t__ CHIP_RENOIR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_device*,struct ras_common_if*) ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_device*,struct ras_common_if*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct amdgpu_device*,struct ras_ih_if*) ; 
 scalar_t__ FUNC8 (struct amdgpu_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct amdgpu_device*,struct ras_common_if*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct ras_common_if*) ; 

__attribute__((used)) static int FUNC15(void *handle)
{
	int i;
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;

	if (FUNC8(adev, AMDGPU_RAS_BLOCK__GFX) &&
			adev->gfx.ras_if) {
		struct ras_common_if *ras_if = adev->gfx.ras_if;
		struct ras_ih_if ih_info = {
			.head = *ras_if,
		};

		FUNC5(adev, ras_if);
		FUNC9(adev, ras_if);
		FUNC7(adev,  &ih_info);
		FUNC6(adev, ras_if, 0);
		FUNC14(ras_if);
	}

	for (i = 0; i < adev->gfx.num_gfx_rings; i++)
		FUNC10(&adev->gfx.gfx_ring[i]);
	for (i = 0; i < adev->gfx.num_compute_rings; i++)
		FUNC10(&adev->gfx.compute_ring[i]);

	FUNC4(adev);
	FUNC3(&adev->gfx.kiq.ring, &adev->gfx.kiq.irq);
	FUNC2(adev);

	FUNC12(adev);
	FUNC13(adev);
	FUNC1(&adev->gfx.rlc.clear_state_obj);
	if (adev->asic_type == CHIP_RAVEN || adev->asic_type == CHIP_RENOIR) {
		FUNC0(&adev->gfx.rlc.cp_table_obj,
				&adev->gfx.rlc.cp_table_gpu_addr,
				(void **)&adev->gfx.rlc.cp_table_ptr);
	}
	FUNC11(adev);

	return 0;
}