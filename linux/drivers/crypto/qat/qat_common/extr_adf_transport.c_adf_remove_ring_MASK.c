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
struct adf_etr_ring_data {int /*<<< orphan*/  ring_number; struct adf_etr_bank_data* bank; } ;
struct adf_etr_bank_data {int /*<<< orphan*/  bank_number; int /*<<< orphan*/  csr_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct adf_etr_ring_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct adf_etr_bank_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct adf_etr_ring_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct adf_etr_bank_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct adf_etr_ring_data*) ; 

void FUNC7(struct adf_etr_ring_data *ring)
{
	struct adf_etr_bank_data *bank = ring->bank;

	/* Disable interrupts for the given ring */
	FUNC3(bank, ring->ring_number);

	/* Clear PCI config space */
	FUNC1(bank->csr_addr, bank->bank_number,
			      ring->ring_number, 0);
	FUNC0(bank->csr_addr, bank->bank_number,
			    ring->ring_number, 0);
	FUNC4(ring);
	FUNC5(bank, ring->ring_number);
	/* Disable HW arbitration for the given ring */
	FUNC6(ring);
	FUNC2(ring);
}