#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct i915_request {int head; int tail; TYPE_3__* ring; TYPE_2__* batch; int /*<<< orphan*/  postfix; } ;
struct drm_printer {int dummy; } ;
struct TYPE_6__ {unsigned int size; void* vaddr; } ;
struct TYPE_4__ {int /*<<< orphan*/  start; } ;
struct TYPE_5__ {TYPE_1__ node; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct drm_printer*,char*,int,int /*<<< orphan*/ ,int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_printer*,void*,int) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*,void const*,int) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct drm_printer *m, struct i915_request *rq)
{
	void *ring;
	int size;

	FUNC0(m,
		   "[head %04x, postfix %04x, tail %04x, batch 0x%08x_%08x]:\n",
		   rq->head, rq->postfix, rq->tail,
		   rq->batch ? FUNC6(rq->batch->node.start) : ~0u,
		   rq->batch ? FUNC4(rq->batch->node.start) : ~0u);

	size = rq->tail - rq->head;
	if (rq->tail < rq->head)
		size += rq->ring->size;

	ring = FUNC3(size, GFP_ATOMIC);
	if (ring) {
		const void *vaddr = rq->ring->vaddr;
		unsigned int head = rq->head;
		unsigned int len = 0;

		if (rq->tail < head) {
			len = rq->ring->size - head;
			FUNC5(ring, vaddr + head, len);
			head = 0;
		}
		FUNC5(ring + len, vaddr + head, size - len);

		FUNC1(m, ring, size);
		FUNC2(ring);
	}
}