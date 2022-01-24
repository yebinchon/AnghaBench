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
struct stm32_mdma_device {int dummy; } ;
struct stm32_mdma_chan {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct stm32_mdma_chan*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct stm32_mdma_device* FUNC12 (struct stm32_mdma_chan*) ; 
 int /*<<< orphan*/  FUNC13 (struct stm32_mdma_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(struct stm32_mdma_chan *chan)
{
	struct stm32_mdma_device *dmadev = FUNC12(chan);

	FUNC11(FUNC10(chan), "CCR:     0x%08x\n",
		FUNC13(dmadev, FUNC2(chan->id)));
	FUNC11(FUNC10(chan), "CTCR:    0x%08x\n",
		FUNC13(dmadev, FUNC9(chan->id)));
	FUNC11(FUNC10(chan), "CBNDTR:  0x%08x\n",
		FUNC13(dmadev, FUNC0(chan->id)));
	FUNC11(FUNC10(chan), "CSAR:    0x%08x\n",
		FUNC13(dmadev, FUNC7(chan->id)));
	FUNC11(FUNC10(chan), "CDAR:    0x%08x\n",
		FUNC13(dmadev, FUNC3(chan->id)));
	FUNC11(FUNC10(chan), "CBRUR:   0x%08x\n",
		FUNC13(dmadev, FUNC1(chan->id)));
	FUNC11(FUNC10(chan), "CLAR:    0x%08x\n",
		FUNC13(dmadev, FUNC4(chan->id)));
	FUNC11(FUNC10(chan), "CTBR:    0x%08x\n",
		FUNC13(dmadev, FUNC8(chan->id)));
	FUNC11(FUNC10(chan), "CMAR:    0x%08x\n",
		FUNC13(dmadev, FUNC5(chan->id)));
	FUNC11(FUNC10(chan), "CMDR:    0x%08x\n",
		FUNC13(dmadev, FUNC6(chan->id)));
}