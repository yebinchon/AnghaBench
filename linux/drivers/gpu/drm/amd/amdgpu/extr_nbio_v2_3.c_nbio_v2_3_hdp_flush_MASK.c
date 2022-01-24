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
struct amdgpu_ring {TYPE_1__* funcs; } ;
struct amdgpu_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  emit_wreg; } ;

/* Variables and functions */
 int /*<<< orphan*/  NBIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_ring*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmBIF_BX_PF_HDP_MEM_COHERENCY_FLUSH_CNTL ; 

__attribute__((used)) static void FUNC3(struct amdgpu_device *adev,
				struct amdgpu_ring *ring)
{
	if (!ring || !ring->funcs->emit_wreg)
		FUNC1(NBIO, 0, mmBIF_BX_PF_HDP_MEM_COHERENCY_FLUSH_CNTL, 0);
	else
		FUNC2(ring, FUNC0(
			NBIO, 0, mmBIF_BX_PF_HDP_MEM_COHERENCY_FLUSH_CNTL), 0);
}