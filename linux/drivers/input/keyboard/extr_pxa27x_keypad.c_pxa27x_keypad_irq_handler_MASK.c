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
struct pxa27x_keypad {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  KPC ; 
 unsigned long KPC_DI ; 
 unsigned long KPC_MI ; 
 int /*<<< orphan*/  FUNC0 (struct pxa27x_keypad*) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pxa27x_keypad*) ; 
 int /*<<< orphan*/  FUNC3 (struct pxa27x_keypad*) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *dev_id)
{
	struct pxa27x_keypad *keypad = dev_id;
	unsigned long kpc = FUNC1(KPC);

	FUNC0(keypad);

	if (kpc & KPC_DI)
		FUNC2(keypad);

	if (kpc & KPC_MI)
		FUNC3(keypad);

	return IRQ_HANDLED;
}