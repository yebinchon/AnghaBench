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
struct dma_fence {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int FUNC0 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 

int FUNC3(struct dma_fence *fence)
{
	unsigned long flags;
	int status;

	FUNC1(fence->lock, flags);
	status = FUNC0(fence);
	FUNC2(fence->lock, flags);

	return status;
}