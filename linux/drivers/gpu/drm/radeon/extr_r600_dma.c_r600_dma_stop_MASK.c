#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_7__ {int /*<<< orphan*/  visible_vram_size; } ;
struct radeon_device {TYPE_4__* ring; TYPE_3__ mc; TYPE_2__* asic; } ;
struct TYPE_8__ {int ready; } ;
struct TYPE_5__ {size_t copy_ring_index; } ;
struct TYPE_6__ {TYPE_1__ copy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_RB_CNTL ; 
 int /*<<< orphan*/  DMA_RB_ENABLE ; 
 size_t R600_RING_TYPE_DMA_INDEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*,int /*<<< orphan*/ ) ; 

void FUNC3(struct radeon_device *rdev)
{
	u32 rb_cntl = FUNC0(DMA_RB_CNTL);

	if (rdev->asic->copy.copy_ring_index == R600_RING_TYPE_DMA_INDEX)
		FUNC2(rdev, rdev->mc.visible_vram_size);

	rb_cntl &= ~DMA_RB_ENABLE;
	FUNC1(DMA_RB_CNTL, rb_cntl);

	rdev->ring[R600_RING_TYPE_DMA_INDEX].ready = false;
}