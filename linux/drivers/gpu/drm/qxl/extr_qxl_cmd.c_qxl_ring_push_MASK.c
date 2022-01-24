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
typedef  int /*<<< orphan*/  uint8_t ;
struct qxl_ring_header {int prod; scalar_t__ cons; scalar_t__ num_items; scalar_t__ notify_on_cons; int notify_on_prod; } ;
struct qxl_ring {int n_elements; int element_size; int /*<<< orphan*/  lock; int /*<<< orphan*/  prod_notify; TYPE_1__* ring; int /*<<< orphan*/ * push_event; } ;
struct TYPE_2__ {int /*<<< orphan*/ * elements; struct qxl_ring_header header; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (void*,void const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct qxl_ring*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC10(struct qxl_ring *ring,
		  const void *new_elt, bool interruptible)
{
	struct qxl_ring_header *header = &(ring->ring->header);
	uint8_t *elt;
	int idx, ret;
	unsigned long flags;

	FUNC5(&ring->lock, flags);
	if (header->prod - header->cons == header->num_items) {
		header->notify_on_cons = header->cons + 1;
		FUNC1();
		FUNC6(&ring->lock, flags);
		if (!FUNC0()) {
			while (!FUNC4(ring))
				FUNC7(1);
		} else {
			if (interruptible) {
				ret = FUNC9(*ring->push_event,
							       FUNC4(ring));
				if (ret)
					return ret;
			} else {
				FUNC8(*ring->push_event,
					   FUNC4(ring));
			}

		}
		FUNC5(&ring->lock, flags);
	}

	idx = header->prod & (ring->n_elements - 1);
	elt = ring->ring->elements + idx * ring->element_size;

	FUNC2((void *)elt, new_elt, ring->element_size);

	header->prod++;

	FUNC1();

	if (header->prod == header->notify_on_prod)
		FUNC3(0, ring->prod_notify);

	FUNC6(&ring->lock, flags);
	return 0;
}