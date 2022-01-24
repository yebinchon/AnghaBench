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
struct amdgpu_ring {size_t wptr_offs; int /*<<< orphan*/  wptr; int /*<<< orphan*/  me; int /*<<< orphan*/  doorbell_index; scalar_t__ use_doorbell; struct amdgpu_device* adev; } ;
struct TYPE_2__ {int /*<<< orphan*/ * wb; } ;
struct amdgpu_device {TYPE_1__ wb; } ;

/* Variables and functions */
 int /*<<< orphan*/  UVD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmUVD_JRBC_RB_WPTR ; 

__attribute__((used)) static void FUNC3(struct amdgpu_ring *ring)
{
	struct amdgpu_device *adev = ring->adev;

	if (ring->use_doorbell) {
		adev->wb.wb[ring->wptr_offs] = FUNC2(ring->wptr);
		FUNC0(ring->doorbell_index, FUNC2(ring->wptr));
	} else {
		FUNC1(UVD, ring->me, mmUVD_JRBC_RB_WPTR, FUNC2(ring->wptr));
	}
}