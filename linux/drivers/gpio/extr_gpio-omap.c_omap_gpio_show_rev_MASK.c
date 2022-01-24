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
typedef  int u32 ;
struct gpio_bank {scalar_t__ base; TYPE_1__* regs; } ;
struct TYPE_2__ {scalar_t__ revision; } ;

/* Variables and functions */
 scalar_t__ USHRT_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int FUNC1 (scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct gpio_bank *bank)
{
	static bool called;
	u32 rev;

	if (called || bank->regs->revision == USHRT_MAX)
		return;

	rev = FUNC1(bank->base + bank->regs->revision);
	FUNC0("OMAP GPIO hardware version %d.%d\n",
		(rev >> 4) & 0x0f, rev & 0x0f);

	called = true;
}