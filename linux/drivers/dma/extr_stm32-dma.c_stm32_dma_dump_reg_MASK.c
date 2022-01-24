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
typedef  int /*<<< orphan*/  u32 ;
struct stm32_dma_device {int dummy; } ;
struct stm32_dma_chan {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct stm32_dma_chan*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct stm32_dma_device* FUNC8 (struct stm32_dma_chan*) ; 
 int /*<<< orphan*/  FUNC9 (struct stm32_dma_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct stm32_dma_chan *chan)
{
	struct stm32_dma_device *dmadev = FUNC8(chan);
	u32 scr = FUNC9(dmadev, FUNC0(chan->id));
	u32 ndtr = FUNC9(dmadev, FUNC4(chan->id));
	u32 spar = FUNC9(dmadev, FUNC5(chan->id));
	u32 sm0ar = FUNC9(dmadev, FUNC2(chan->id));
	u32 sm1ar = FUNC9(dmadev, FUNC3(chan->id));
	u32 sfcr = FUNC9(dmadev, FUNC1(chan->id));

	FUNC7(FUNC6(chan), "SCR:   0x%08x\n", scr);
	FUNC7(FUNC6(chan), "NDTR:  0x%08x\n", ndtr);
	FUNC7(FUNC6(chan), "SPAR:  0x%08x\n", spar);
	FUNC7(FUNC6(chan), "SM0AR: 0x%08x\n", sm0ar);
	FUNC7(FUNC6(chan), "SM1AR: 0x%08x\n", sm1ar);
	FUNC7(FUNC6(chan), "SFCR:  0x%08x\n", sfcr);
}