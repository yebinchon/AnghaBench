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
struct zynq_gpio {int /*<<< orphan*/  irq; } ;
struct irq_data {int dummy; } ;

/* Variables and functions */
 struct zynq_gpio* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct irq_data *data, unsigned int on)
{
	struct zynq_gpio *gpio =
		FUNC0(FUNC1(data));

	FUNC2(gpio->irq, on);

	return 0;
}