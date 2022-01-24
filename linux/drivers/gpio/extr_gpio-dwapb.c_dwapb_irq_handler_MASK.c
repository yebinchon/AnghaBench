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
struct irq_desc {int dummy; } ;
struct irq_chip {int /*<<< orphan*/  (* irq_eoi ) (int /*<<< orphan*/ ) ;} ;
struct dwapb_gpio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dwapb_gpio*) ; 
 struct irq_chip* FUNC1 (struct irq_desc*) ; 
 struct dwapb_gpio* FUNC2 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC3 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct irq_desc *desc)
{
	struct dwapb_gpio *gpio = FUNC2(desc);
	struct irq_chip *chip = FUNC1(desc);

	FUNC0(gpio);

	if (chip->irq_eoi)
		chip->irq_eoi(FUNC3(desc));
}