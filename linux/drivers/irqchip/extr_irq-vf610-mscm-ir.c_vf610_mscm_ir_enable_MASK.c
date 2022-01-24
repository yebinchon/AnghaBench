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
typedef  int u16 ;
struct vf610_mscm_ir_chip_data {int cpu_mask; scalar_t__ mscm_ir_base; } ;
struct irq_data {struct vf610_mscm_ir_chip_data* chip_data; int /*<<< orphan*/  hwirq; } ;
typedef  int /*<<< orphan*/  irq_hw_number_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int MSCM_IRSPRC_CPEN_MASK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_data*) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct irq_data *data)
{
	irq_hw_number_t hwirq = data->hwirq;
	struct vf610_mscm_ir_chip_data *chip_data = data->chip_data;
	u16 irsprc;

	irsprc = FUNC3(chip_data->mscm_ir_base + FUNC0(hwirq));
	irsprc &= MSCM_IRSPRC_CPEN_MASK;

	FUNC1(irsprc & ~chip_data->cpu_mask);

	FUNC4(chip_data->cpu_mask,
		       chip_data->mscm_ir_base + FUNC0(hwirq));

	FUNC2(data);
}