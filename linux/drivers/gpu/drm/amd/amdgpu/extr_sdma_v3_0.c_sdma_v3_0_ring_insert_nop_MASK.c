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
typedef  int uint32_t ;
struct amdgpu_sdma_instance {scalar_t__ burst_nop; } ;
struct amdgpu_ring {TYPE_1__* funcs; } ;
struct TYPE_2__ {int nop; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_ring*,int) ; 
 struct amdgpu_sdma_instance* FUNC2 (struct amdgpu_ring*) ; 

__attribute__((used)) static void FUNC3(struct amdgpu_ring *ring, uint32_t count)
{
	struct amdgpu_sdma_instance *sdma = FUNC2(ring);
	int i;

	for (i = 0; i < count; i++)
		if (sdma && sdma->burst_nop && (i == 0))
			FUNC1(ring, ring->funcs->nop |
				FUNC0(count - 1));
		else
			FUNC1(ring, ring->funcs->nop);
}