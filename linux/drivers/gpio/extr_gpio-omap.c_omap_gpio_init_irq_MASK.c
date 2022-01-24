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
struct gpio_bank {int /*<<< orphan*/  irq_usage; int /*<<< orphan*/  mod_usage; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct gpio_bank*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct gpio_bank*,unsigned int,int) ; 

__attribute__((used)) static void FUNC4(struct gpio_bank *bank, unsigned offset)
{
	if (!FUNC1(bank->mod_usage, offset)) {
		FUNC2(bank, offset);
		FUNC3(bank, offset, 1);
	}
	bank->irq_usage |= FUNC0(offset);
}