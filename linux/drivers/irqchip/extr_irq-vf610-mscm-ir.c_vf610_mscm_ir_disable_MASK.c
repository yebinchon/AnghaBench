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
struct vf610_mscm_ir_chip_data {scalar_t__ mscm_ir_base; } ;
struct irq_data {struct vf610_mscm_ir_chip_data* chip_data; int /*<<< orphan*/  hwirq; } ;
typedef  int /*<<< orphan*/  irq_hw_number_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct irq_data *data)
{
	irq_hw_number_t hwirq = data->hwirq;
	struct vf610_mscm_ir_chip_data *chip_data = data->chip_data;

	FUNC2(0x0, chip_data->mscm_ir_base + FUNC0(hwirq));

	FUNC1(data);
}