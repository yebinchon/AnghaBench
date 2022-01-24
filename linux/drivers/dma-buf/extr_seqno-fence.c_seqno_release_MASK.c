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
struct seqno_fence {int /*<<< orphan*/  base; TYPE_1__* ops; int /*<<< orphan*/  sync_buf; } ;
struct dma_fence {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* release ) (struct dma_fence*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct dma_fence*) ; 
 struct seqno_fence* FUNC3 (struct dma_fence*) ; 

__attribute__((used)) static void FUNC4(struct dma_fence *fence)
{
	struct seqno_fence *f = FUNC3(fence);

	FUNC0(f->sync_buf);
	if (f->ops->release)
		f->ops->release(fence);
	else
		FUNC1(&f->base);
}