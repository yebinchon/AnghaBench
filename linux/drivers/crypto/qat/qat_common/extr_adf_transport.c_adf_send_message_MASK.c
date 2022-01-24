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
typedef  int /*<<< orphan*/  uint32_t ;
struct adf_etr_ring_data {int /*<<< orphan*/  lock; scalar_t__ tail; int /*<<< orphan*/  ring_number; TYPE_1__* bank; int /*<<< orphan*/  ring_size; int /*<<< orphan*/  msg_size; scalar_t__ base_addr; int /*<<< orphan*/  inflights; } ;
struct TYPE_2__ {int /*<<< orphan*/  bank_number; int /*<<< orphan*/  csr_addr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int FUNC10(struct adf_etr_ring_data *ring, uint32_t *msg)
{
	if (FUNC5(1, ring->inflights) >
	    FUNC0(ring->ring_size, ring->msg_size)) {
		FUNC6(ring->inflights);
		return -EAGAIN;
	}
	FUNC8(&ring->lock);
	FUNC7((void *)((uintptr_t)ring->base_addr + ring->tail), msg,
	       FUNC1(ring->msg_size));

	ring->tail = FUNC4(ring->tail +
				FUNC1(ring->msg_size),
				FUNC2(ring->ring_size));
	FUNC3(ring->bank->csr_addr, ring->bank->bank_number,
			    ring->ring_number, ring->tail);
	FUNC9(&ring->lock);
	return 0;
}