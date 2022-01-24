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
struct msi_msg {int /*<<< orphan*/  data; int /*<<< orphan*/  address_lo; int /*<<< orphan*/  address_hi; } ;
struct irq_data {TYPE_1__* parent_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  hwirq; } ;

/* Variables and functions */
 scalar_t__ GICD_CLRSPI_NSR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct msi_msg*) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct irq_data*,struct msi_msg*) ; 
 scalar_t__ mbi_phys_base ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct irq_data *data, struct msi_msg *msg)
{
	FUNC3(data, msg);

	msg[1].address_hi = FUNC4(mbi_phys_base + GICD_CLRSPI_NSR);
	msg[1].address_lo = FUNC2(mbi_phys_base + GICD_CLRSPI_NSR);
	msg[1].data = data->parent_data->hwirq;

	FUNC0(FUNC1(data), &msg[1]);
}