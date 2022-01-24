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
struct qxl_ring_header {int cons; int prod; int notify_on_prod; } ;
struct qxl_ring {int n_elements; int element_size; int /*<<< orphan*/  lock; TYPE_1__* ring; } ;
struct TYPE_2__ {int /*<<< orphan*/ * elements; struct qxl_ring_header header; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static bool FUNC3(struct qxl_ring *ring,
			 void *element)
{
	volatile struct qxl_ring_header *header = &(ring->ring->header);
	volatile uint8_t *ring_elt;
	int idx;
	unsigned long flags;

	FUNC1(&ring->lock, flags);
	if (header->cons == header->prod) {
		header->notify_on_prod = header->cons + 1;
		FUNC2(&ring->lock, flags);
		return false;
	}

	idx = header->cons & (ring->n_elements - 1);
	ring_elt = ring->ring->elements + idx * ring->element_size;

	FUNC0(element, (void *)ring_elt, ring->element_size);

	header->cons++;

	FUNC2(&ring->lock, flags);
	return true;
}