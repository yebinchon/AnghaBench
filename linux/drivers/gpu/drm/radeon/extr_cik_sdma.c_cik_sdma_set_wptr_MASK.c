#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u32 ;
struct radeon_ring {scalar_t__ idx; int wptr; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ R600_RING_TYPE_DMA_INDEX ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ SDMA0_GFX_RB_WPTR ; 
 scalar_t__ SDMA0_REGISTER_OFFSET ; 
 scalar_t__ SDMA1_REGISTER_OFFSET ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 

void FUNC2(struct radeon_device *rdev,
		       struct radeon_ring *ring)
{
	u32 reg;

	if (ring->idx == R600_RING_TYPE_DMA_INDEX)
		reg = SDMA0_GFX_RB_WPTR + SDMA0_REGISTER_OFFSET;
	else
		reg = SDMA0_GFX_RB_WPTR + SDMA1_REGISTER_OFFSET;

	FUNC1(reg, (ring->wptr << 2) & 0x3fffc);
	(void)FUNC0(reg);
}