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
struct dma_fence_cb {int dummy; } ;
struct dma_fence {int dummy; } ;
struct dma_buf_poll_cb_t {TYPE_1__* poll; scalar_t__ active; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct dma_fence *fence, struct dma_fence_cb *cb)
{
	struct dma_buf_poll_cb_t *dcb = (struct dma_buf_poll_cb_t *)cb;
	unsigned long flags;

	FUNC0(&dcb->poll->lock, flags);
	FUNC2(dcb->poll, dcb->active);
	dcb->active = 0;
	FUNC1(&dcb->poll->lock, flags);
}