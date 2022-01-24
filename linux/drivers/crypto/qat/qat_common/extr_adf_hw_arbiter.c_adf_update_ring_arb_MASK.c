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
struct adf_etr_ring_data {TYPE_1__* bank; } ;
struct TYPE_2__ {int ring_mask; int /*<<< orphan*/  bank_number; int /*<<< orphan*/  csr_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC1(struct adf_etr_ring_data *ring)
{
	FUNC0(ring->bank->csr_addr,
				   ring->bank->bank_number,
				   ring->bank->ring_mask & 0xFF);
}