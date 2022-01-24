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
struct amdgpu_ring {int wptr; TYPE_1__* funcs; } ;
struct TYPE_2__ {int align_mask; int /*<<< orphan*/  (* end_use ) (struct amdgpu_ring*) ;int /*<<< orphan*/  (* insert_nop ) (struct amdgpu_ring*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct amdgpu_ring*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_ring*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_ring*) ; 

void FUNC4(struct amdgpu_ring *ring)
{
	uint32_t count;

	/* We pad to match fetch size */
	count = ring->funcs->align_mask + 1 -
		(ring->wptr & ring->funcs->align_mask);
	count %= ring->funcs->align_mask + 1;
	ring->funcs->insert_nop(ring, count);

	FUNC1();
	FUNC0(ring);

	if (ring->funcs->end_use)
		ring->funcs->end_use(ring);
}