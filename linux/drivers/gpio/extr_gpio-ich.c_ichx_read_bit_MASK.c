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
typedef  int u32 ;
struct TYPE_4__ {int* outlvl_cache; int /*<<< orphan*/  lock; TYPE_1__* desc; int /*<<< orphan*/  gpio_base; } ;
struct TYPE_3__ {scalar_t__ use_outlvl_cache; int /*<<< orphan*/ ** regs; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int GPIO_LVL ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ ichx_priv ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(int reg, unsigned nr)
{
	unsigned long flags;
	u32 data;
	int reg_nr = nr / 32;
	int bit = nr & 0x1f;

	FUNC2(&ichx_priv.lock, flags);

	data = FUNC1(ichx_priv.desc->regs[reg][reg_nr],
			 ichx_priv.gpio_base);

	if (reg == GPIO_LVL && ichx_priv.desc->use_outlvl_cache)
		data = ichx_priv.outlvl_cache[reg_nr] | data;

	FUNC3(&ichx_priv.lock, flags);

	return !!(data & FUNC0(bit));
}