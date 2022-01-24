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
struct irq_data {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIUINTENH ; 
 int /*<<< orphan*/  GIUINTSTATH ; 
 unsigned int GIUINT_HIGH_OFFSET ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct irq_data *d)
{
	unsigned int pin;

	pin = FUNC0(d->irq) - GIUINT_HIGH_OFFSET;
	FUNC1(GIUINTENH, 1 << pin);
	FUNC2(GIUINTSTATH, 1 << pin);
}