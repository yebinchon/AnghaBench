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
struct mic_dma_chan {scalar_t__ owner; scalar_t__ issued; int /*<<< orphan*/  last_tail; int /*<<< orphan*/  head; } ;

/* Variables and functions */
 scalar_t__ MIC_DMA_CHAN_MIC ; 
 int /*<<< orphan*/  MIC_DMA_REG_DCHERRMSK ; 
 int /*<<< orphan*/  MIC_DMA_REG_DTPR ; 
 int /*<<< orphan*/  FUNC0 (struct mic_dma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (struct mic_dma_chan*) ; 
 int /*<<< orphan*/  FUNC2 (struct mic_dma_chan*) ; 
 int /*<<< orphan*/  FUNC3 (struct mic_dma_chan*) ; 
 int FUNC4 (struct mic_dma_chan*) ; 
 int /*<<< orphan*/  FUNC5 (struct mic_dma_chan*) ; 
 int /*<<< orphan*/  FUNC6 (struct mic_dma_chan*) ; 
 int /*<<< orphan*/  FUNC7 (struct mic_dma_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mic_dma_chan*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct mic_dma_chan *ch)
{
	if (MIC_DMA_CHAN_MIC == ch->owner)
		FUNC2(ch);
	FUNC5(ch);
	FUNC0(ch);
	FUNC8(ch, MIC_DMA_REG_DCHERRMSK, 0);
	FUNC1(ch);
	ch->last_tail = FUNC7(ch, MIC_DMA_REG_DTPR);
	ch->head = ch->last_tail;
	ch->issued = 0;
	FUNC3(ch);
	FUNC6(ch);
	return FUNC4(ch);
}