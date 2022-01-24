#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  bgpio_lock; } ;
struct brcmstb_gpio_bank {TYPE_1__ gc; } ;

/* Variables and functions */
 unsigned long FUNC0 (struct brcmstb_gpio_bank*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static unsigned long
FUNC3(struct brcmstb_gpio_bank *bank)
{
	unsigned long status;
	unsigned long flags;

	FUNC1(&bank->gc.bgpio_lock, flags);
	status = FUNC0(bank);
	FUNC2(&bank->gc.bgpio_lock, flags);

	return status;
}