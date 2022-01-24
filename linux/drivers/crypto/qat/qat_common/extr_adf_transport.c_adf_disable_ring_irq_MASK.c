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
typedef  int uint32_t ;
struct adf_etr_bank_data {int irq_mask; int /*<<< orphan*/  bank_number; int /*<<< orphan*/  csr_addr; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct adf_etr_bank_data *bank, uint32_t ring)
{
	FUNC1(&bank->lock);
	bank->irq_mask &= ~(1 << ring);
	FUNC2(&bank->lock);
	FUNC0(bank->csr_addr, bank->bank_number, bank->irq_mask);
}