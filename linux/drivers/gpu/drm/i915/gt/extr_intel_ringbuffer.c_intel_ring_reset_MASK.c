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
typedef  void* u32 ;
struct intel_ring {void* emit; void* head; void* tail; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct intel_ring*) ; 
 void* FUNC1 (struct intel_ring*,void*) ; 

void FUNC2(struct intel_ring *ring, u32 tail)
{
	tail = FUNC1(ring, tail);
	ring->tail = tail;
	ring->head = tail;
	ring->emit = tail;
	FUNC0(ring);
}