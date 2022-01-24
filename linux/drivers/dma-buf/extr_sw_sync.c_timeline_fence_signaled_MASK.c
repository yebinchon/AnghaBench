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
struct sync_timeline {int /*<<< orphan*/  value; } ;
struct dma_fence {int /*<<< orphan*/  ops; int /*<<< orphan*/  seqno; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sync_timeline* FUNC1 (struct dma_fence*) ; 

__attribute__((used)) static bool FUNC2(struct dma_fence *fence)
{
	struct sync_timeline *parent = FUNC1(fence);

	return !FUNC0(fence->seqno, parent->value, fence->ops);
}