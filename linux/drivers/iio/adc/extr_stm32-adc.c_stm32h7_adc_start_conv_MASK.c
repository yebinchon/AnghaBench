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
typedef  int u32 ;
struct stm32_adc {int /*<<< orphan*/  lock; } ;
typedef  enum stm32h7_adc_dmngt { ____Placeholder_stm32h7_adc_dmngt } stm32h7_adc_dmngt ;

/* Variables and functions */
 int /*<<< orphan*/  STM32H7_ADC_CFGR ; 
 int /*<<< orphan*/  STM32H7_ADC_CR ; 
 int /*<<< orphan*/  STM32H7_ADSTART ; 
 int STM32H7_DMNGT_DMA_CIRC ; 
 int STM32H7_DMNGT_DR_ONLY ; 
 int STM32H7_DMNGT_MASK ; 
 int STM32H7_DMNGT_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC2 (struct stm32_adc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct stm32_adc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct stm32_adc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct stm32_adc *adc, bool dma)
{
	enum stm32h7_adc_dmngt dmngt;
	unsigned long flags;
	u32 val;

	if (dma)
		dmngt = STM32H7_DMNGT_DMA_CIRC;
	else
		dmngt = STM32H7_DMNGT_DR_ONLY;

	FUNC0(&adc->lock, flags);
	val = FUNC2(adc, STM32H7_ADC_CFGR);
	val = (val & ~STM32H7_DMNGT_MASK) | (dmngt << STM32H7_DMNGT_SHIFT);
	FUNC4(adc, STM32H7_ADC_CFGR, val);
	FUNC1(&adc->lock, flags);

	FUNC3(adc, STM32H7_ADC_CR, STM32H7_ADSTART);
}