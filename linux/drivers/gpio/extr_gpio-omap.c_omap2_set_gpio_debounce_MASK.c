#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  void* u32 ;
struct TYPE_4__ {unsigned int debounce; void* debounce_en; } ;
struct gpio_bank {TYPE_2__ context; void* dbck_enable_mask; int /*<<< orphan*/  dbck; TYPE_1__* regs; scalar_t__ base; int /*<<< orphan*/  dbck_flag; } ;
struct TYPE_3__ {scalar_t__ debounce_en; scalar_t__ debounce; } ;

/* Variables and functions */
 void* FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int,int) ; 
 int EINVAL ; 
 int ENOTSUPP ; 
 unsigned int OMAP4_GPIO_DEBOUNCINGTIME_MASK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gpio_bank*) ; 
 void* FUNC5 (scalar_t__,void*,int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct gpio_bank *bank, unsigned offset,
				   unsigned debounce)
{
	u32			val;
	u32			l;
	bool			enable = !!debounce;

	if (!bank->dbck_flag)
		return -ENOTSUPP;

	if (enable) {
		debounce = FUNC1(debounce, 31) - 1;
		if ((debounce & OMAP4_GPIO_DEBOUNCINGTIME_MASK) != debounce)
			return -EINVAL;
	}

	l = FUNC0(offset);

	FUNC3(bank->dbck);
	FUNC6(debounce, bank->base + bank->regs->debounce);

	val = FUNC5(bank->base + bank->regs->debounce_en, l, enable);
	bank->dbck_enable_mask = val;

	FUNC2(bank->dbck);
	/*
	 * Enable debounce clock per module.
	 * This call is mandatory because in omap_gpio_request() when
	 * *_runtime_get_sync() is called,  _gpio_dbck_enable() within
	 * runtime callbck fails to turn on dbck because dbck_enable_mask
	 * used within _gpio_dbck_enable() is still not initialized at
	 * that point. Therefore we have to enable dbck here.
	 */
	FUNC4(bank);
	if (bank->dbck_enable_mask) {
		bank->context.debounce = debounce;
		bank->context.debounce_en = val;
	}

	return 0;
}