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
struct amdgpu_ring {TYPE_1__* funcs; } ;
struct TYPE_2__ {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ AMDGPU_RING_TYPE_GFX ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PACKET3_WRITE_DATA ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_ring*,int) ; 

__attribute__((used)) static void FUNC4(struct amdgpu_ring *ring,
				    uint32_t reg, uint32_t val)
{
	int usepfp = (ring->funcs->type == AMDGPU_RING_TYPE_GFX);

	FUNC3(ring, FUNC0(PACKET3_WRITE_DATA, 3));
	FUNC3(ring, (FUNC2(usepfp) |
				 FUNC1(0)));
	FUNC3(ring, reg);
	FUNC3(ring, 0);
	FUNC3(ring, val);
}