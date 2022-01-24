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
struct dma_fence {int /*<<< orphan*/  flags; int /*<<< orphan*/  timestamp; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FENCE_FLAG_TIMESTAMP_BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_fence*) ; 

__attribute__((used)) static void
FUNC2(struct dma_fence *fence, ktime_t timestamp)
{
	fence->timestamp = timestamp;
	FUNC0(DMA_FENCE_FLAG_TIMESTAMP_BIT, &fence->flags);
	FUNC1(fence);
}