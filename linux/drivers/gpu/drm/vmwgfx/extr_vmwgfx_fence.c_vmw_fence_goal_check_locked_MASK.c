#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_4__ {scalar_t__ seqno; } ;
struct vmw_fence_obj {TYPE_2__ base; } ;
struct vmw_fence_manager {int seqno_valid; TYPE_1__* dev_priv; } ;
struct TYPE_3__ {scalar_t__* mmio_virt; } ;

/* Variables and functions */
 int SVGA_FIFO_FENCE_GOAL ; 
 scalar_t__ VMW_FENCE_WRAP ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 struct vmw_fence_manager* FUNC1 (struct vmw_fence_obj*) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__*) ; 

__attribute__((used)) static bool FUNC5(struct vmw_fence_obj *fence)
{
	struct vmw_fence_manager *fman = FUNC1(fence);
	u32 goal_seqno;
	u32 *fifo_mem;

	if (FUNC0(&fence->base))
		return false;

	fifo_mem = fman->dev_priv->mmio_virt;
	goal_seqno = FUNC3(fifo_mem + SVGA_FIFO_FENCE_GOAL);
	if (FUNC2(fman->seqno_valid &&
		   goal_seqno - fence->base.seqno < VMW_FENCE_WRAP))
		return false;

	FUNC4(fence->base.seqno, fifo_mem + SVGA_FIFO_FENCE_GOAL);
	fman->seqno_valid = true;

	return true;
}