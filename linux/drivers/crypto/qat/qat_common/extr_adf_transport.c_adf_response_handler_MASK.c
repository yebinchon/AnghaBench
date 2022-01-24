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
struct adf_etr_bank_data {int /*<<< orphan*/  irq_mask; int /*<<< orphan*/  bank_number; int /*<<< orphan*/  csr_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct adf_etr_bank_data*) ; 

void FUNC2(uintptr_t bank_addr)
{
	struct adf_etr_bank_data *bank = (void *)bank_addr;

	/* Handle all the responses and reenable IRQs */
	FUNC1(bank);
	FUNC0(bank->csr_addr, bank->bank_number,
				   bank->irq_mask);
}