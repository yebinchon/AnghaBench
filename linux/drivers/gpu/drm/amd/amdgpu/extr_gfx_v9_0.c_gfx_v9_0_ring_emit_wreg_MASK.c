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
struct TYPE_2__ {int type; } ;

/* Variables and functions */
#define  AMDGPU_RING_TYPE_GFX 129 
#define  AMDGPU_RING_TYPE_KIQ 128 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PACKET3_WRITE_DATA ; 
 int FUNC1 (int) ; 
 int WR_CONFIRM ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_ring*,int) ; 

__attribute__((used)) static void FUNC3(struct amdgpu_ring *ring, uint32_t reg,
				    uint32_t val)
{
	uint32_t cmd = 0;

	switch (ring->funcs->type) {
	case AMDGPU_RING_TYPE_GFX:
		cmd = FUNC1(1) | WR_CONFIRM;
		break;
	case AMDGPU_RING_TYPE_KIQ:
		cmd = (1 << 16); /* no inc addr */
		break;
	default:
		cmd = WR_CONFIRM;
		break;
	}
	FUNC2(ring, FUNC0(PACKET3_WRITE_DATA, 3));
	FUNC2(ring, cmd);
	FUNC2(ring, reg);
	FUNC2(ring, 0);
	FUNC2(ring, val);
}