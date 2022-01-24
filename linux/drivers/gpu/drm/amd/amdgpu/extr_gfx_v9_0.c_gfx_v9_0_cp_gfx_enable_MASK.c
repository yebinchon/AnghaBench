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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_6__ {int num_gfx_rings; TYPE_2__* gfx_ring; } ;
struct amdgpu_device {TYPE_3__ gfx; } ;
struct TYPE_4__ {int ready; } ;
struct TYPE_5__ {TYPE_1__ sched; } ;

/* Variables and functions */
 int /*<<< orphan*/  CE_HALT ; 
 int /*<<< orphan*/  CP_ME_CNTL ; 
 int /*<<< orphan*/  GC ; 
 int /*<<< orphan*/  ME_HALT ; 
 int /*<<< orphan*/  PFP_HALT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmCP_ME_CNTL ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct amdgpu_device *adev, bool enable)
{
	int i;
	u32 tmp = FUNC1(GC, 0, mmCP_ME_CNTL);

	tmp = FUNC0(tmp, CP_ME_CNTL, ME_HALT, enable ? 0 : 1);
	tmp = FUNC0(tmp, CP_ME_CNTL, PFP_HALT, enable ? 0 : 1);
	tmp = FUNC0(tmp, CP_ME_CNTL, CE_HALT, enable ? 0 : 1);
	if (!enable) {
		for (i = 0; i < adev->gfx.num_gfx_rings; i++)
			adev->gfx.gfx_ring[i].sched.ready = false;
	}
	FUNC2(GC, 0, mmCP_ME_CNTL, tmp);
	FUNC3(50);
}