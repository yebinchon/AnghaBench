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
typedef  int uint32_t ;
struct ingenic_adc {int /*<<< orphan*/  clk; int /*<<< orphan*/  lock; scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ JZ_ADC_REG_CFG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct ingenic_adc *adc,
				   uint32_t mask,
				   uint32_t val)
{
	uint32_t cfg;

	FUNC1(adc->clk);
	FUNC2(&adc->lock);

	cfg = FUNC4(adc->base + JZ_ADC_REG_CFG) & ~mask;
	cfg |= val;
	FUNC5(cfg, adc->base + JZ_ADC_REG_CFG);

	FUNC3(&adc->lock);
	FUNC0(adc->clk);
}