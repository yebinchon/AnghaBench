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
struct msi_msg {int /*<<< orphan*/  data; int /*<<< orphan*/  address_lo; int /*<<< orphan*/  address_hi; } ;
struct ls_scfg_msi {int /*<<< orphan*/  msiir_addr; } ;
struct irq_data {int /*<<< orphan*/  hwirq; } ;
struct cpumask {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cpumask const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct msi_msg*) ; 
 struct cpumask* FUNC2 (struct irq_data*) ; 
 struct ls_scfg_msi* FUNC3 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ msi_affinity_flag ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct irq_data *data, struct msi_msg *msg)
{
	struct ls_scfg_msi *msi_data = FUNC3(data);

	msg->address_hi = FUNC6(msi_data->msiir_addr);
	msg->address_lo = FUNC5(msi_data->msiir_addr);
	msg->data = data->hwirq;

	if (msi_affinity_flag) {
		const struct cpumask *mask;

		mask = FUNC2(data);
		msg->data |= FUNC0(mask);
	}

	FUNC1(FUNC4(data), msg);
}