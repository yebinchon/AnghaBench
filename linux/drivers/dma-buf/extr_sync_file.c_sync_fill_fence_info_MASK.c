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
struct sync_fence_info {int status; int /*<<< orphan*/  timestamp_ns; int /*<<< orphan*/  driver_name; int /*<<< orphan*/  obj_name; } ;
struct dma_fence {int /*<<< orphan*/  timestamp; int /*<<< orphan*/  flags; TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* get_driver_name ) (struct dma_fence*) ;int /*<<< orphan*/  (* get_timeline_name ) (struct dma_fence*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FENCE_FLAG_SIGNALED_BIT ; 
 int /*<<< orphan*/  DMA_FENCE_FLAG_TIMESTAMP_BIT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC6 (struct dma_fence*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct dma_fence *fence,
				 struct sync_fence_info *info)
{
	FUNC4(info->obj_name, fence->ops->get_timeline_name(fence),
		sizeof(info->obj_name));
	FUNC4(info->driver_name, fence->ops->get_driver_name(fence),
		sizeof(info->driver_name));

	info->status = FUNC1(fence);
	while (FUNC7(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->flags) &&
	       !FUNC7(DMA_FENCE_FLAG_TIMESTAMP_BIT, &fence->flags))
		FUNC0();
	info->timestamp_ns =
		FUNC7(DMA_FENCE_FLAG_TIMESTAMP_BIT, &fence->flags) ?
		FUNC3(fence->timestamp) :
		FUNC2(0, 0);

	return info->status;
}