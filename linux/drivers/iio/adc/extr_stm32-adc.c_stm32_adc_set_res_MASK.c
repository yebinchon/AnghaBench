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
struct stm32_adc_regs {int mask; int shift; int /*<<< orphan*/  reg; } ;
struct stm32_adc {int res; TYPE_2__* cfg; } ;
struct TYPE_4__ {TYPE_1__* regs; } ;
struct TYPE_3__ {struct stm32_adc_regs res; } ;

/* Variables and functions */
 int FUNC0 (struct stm32_adc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct stm32_adc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct stm32_adc *adc)
{
	const struct stm32_adc_regs *res = &adc->cfg->regs->res;
	u32 val;

	val = FUNC0(adc, res->reg);
	val = (val & ~res->mask) | (adc->res << res->shift);
	FUNC1(adc, res->reg, val);
}