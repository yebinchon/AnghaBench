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
struct intel_ring {unsigned long size; unsigned long effective_size; int /*<<< orphan*/  pin_count; void* vaddr; int /*<<< orphan*/  ref; } ;
struct intel_engine_cs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_ring*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct intel_ring* FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct intel_ring *FUNC4(struct intel_engine_cs *engine)
{
	const unsigned long sz = PAGE_SIZE / 2;
	struct intel_ring *ring;

	ring = FUNC3(sizeof(*ring) + sz, GFP_KERNEL);
	if (!ring)
		return NULL;

	FUNC2(&ring->ref);
	ring->size = sz;
	ring->effective_size = sz;
	ring->vaddr = (void *)(ring + 1);
	FUNC0(&ring->pin_count, 1);

	FUNC1(ring);

	return ring;
}