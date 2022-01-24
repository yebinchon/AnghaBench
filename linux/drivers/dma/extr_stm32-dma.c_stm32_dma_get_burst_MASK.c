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
struct stm32_dma_chan {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int STM32_DMA_BURST_INCR16 ; 
 int STM32_DMA_BURST_INCR4 ; 
 int STM32_DMA_BURST_INCR8 ; 
 int STM32_DMA_BURST_SINGLE ; 
 int /*<<< orphan*/  FUNC0 (struct stm32_dma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC2(struct stm32_dma_chan *chan, u32 maxburst)
{
	switch (maxburst) {
	case 0:
	case 1:
		return STM32_DMA_BURST_SINGLE;
	case 4:
		return STM32_DMA_BURST_INCR4;
	case 8:
		return STM32_DMA_BURST_INCR8;
	case 16:
		return STM32_DMA_BURST_INCR16;
	default:
		FUNC1(FUNC0(chan), "Dma burst size not supported\n");
		return -EINVAL;
	}
}