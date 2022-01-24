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
struct dma_fence {int dummy; } ;

/* Variables and functions */
 struct dma_fence* FUNC0 (struct dma_fence*) ; 
 scalar_t__ FUNC1 (struct dma_fence*,struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC2 (struct dma_fence*) ; 

__attribute__((used)) static void FUNC3(struct dma_fence **keep,
				   struct dma_fence *fence)
{
	if (*keep && FUNC1(*keep, fence))
		return;

	FUNC2(*keep);
	*keep = FUNC0(fence);
}