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
struct amdgpu_ring {size_t wptr_offs; int /*<<< orphan*/  wptr; int /*<<< orphan*/  doorbell_index; scalar_t__ use_doorbell; struct amdgpu_device* adev; } ;
struct TYPE_2__ {int* wb; } ;
struct amdgpu_device {int pg_flags; TYPE_1__ wb; } ;

/* Variables and functions */
 int AMD_PG_SUPPORT_VCN_DPG ; 
 int /*<<< orphan*/  UVD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmUVD_RBC_RB_WPTR ; 
 int /*<<< orphan*/  mmUVD_SCRATCH2 ; 

__attribute__((used)) static void FUNC3(struct amdgpu_ring *ring)
{
	struct amdgpu_device *adev = ring->adev;

	if (adev->pg_flags & AMD_PG_SUPPORT_VCN_DPG)
		FUNC1(UVD, 0, mmUVD_SCRATCH2,
			FUNC2(ring->wptr) | 0x80000000);

	if (ring->use_doorbell) {
		adev->wb.wb[ring->wptr_offs] = FUNC2(ring->wptr);
		FUNC0(ring->doorbell_index, FUNC2(ring->wptr));
	} else {
		FUNC1(UVD, 0, mmUVD_RBC_RB_WPTR, FUNC2(ring->wptr));
	}
}