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
typedef  int /*<<< orphan*/  u32 ;
struct its_device {int dummy; } ;
struct irq_data {int dummy; } ;
typedef  enum irqchip_irq_state { ____Placeholder_irqchip_irq_state } irqchip_irq_state ;

/* Variables and functions */
 int EINVAL ; 
 int IRQCHIP_STATE_PENDING ; 
 struct its_device* FUNC0 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct its_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct its_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct irq_data *d,
				     enum irqchip_irq_state which,
				     bool state)
{
	struct its_device *its_dev = FUNC0(d);
	u32 event = FUNC1(d);

	if (which != IRQCHIP_STATE_PENDING)
		return -EINVAL;

	if (state)
		FUNC3(its_dev, event);
	else
		FUNC2(its_dev, event);

	return 0;
}