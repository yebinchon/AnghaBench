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
struct irq_domain {int dummy; } ;
struct irq_data {int dummy; } ;
typedef  int /*<<< orphan*/  irq_hw_number_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int GIC_MAP_PIN_MAP_TO_PIN ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int gic_cpu_pin ; 
 int /*<<< orphan*/  gic_lock ; 
 int /*<<< orphan*/  FUNC3 (struct irq_data*,int /*<<< orphan*/ ) ; 
 struct irq_data* FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct irq_domain *d, unsigned int virq,
				     irq_hw_number_t hw, unsigned int cpu)
{
	int intr = FUNC1(hw);
	struct irq_data *data;
	unsigned long flags;

	data = FUNC4(virq);

	FUNC6(&gic_lock, flags);
	FUNC8(intr, GIC_MAP_PIN_MAP_TO_PIN | gic_cpu_pin);
	FUNC9(intr, FUNC0(FUNC5(cpu)));
	FUNC3(data, FUNC2(cpu));
	FUNC7(&gic_lock, flags);

	return 0;
}