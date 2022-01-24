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
struct fsldma_chan {int feature; } ;

/* Variables and functions */
 int FSL_DMA_IP_85XX ; 
 int FSL_DMA_IP_MASK ; 
 int FSL_DMA_MR_CA ; 
 int FSL_DMA_MR_CS ; 
 int FSL_DMA_MR_EMS_EN ; 
 int /*<<< orphan*/  FUNC0 (struct fsldma_chan*,char*) ; 
 scalar_t__ FUNC1 (struct fsldma_chan*) ; 
 int FUNC2 (struct fsldma_chan*) ; 
 int /*<<< orphan*/  FUNC3 (struct fsldma_chan*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct fsldma_chan *chan)
{
	u32 mode;
	int i;

	/* read the mode register */
	mode = FUNC2(chan);

	/*
	 * The 85xx controller supports channel abort, which will stop
	 * the current transfer. On 83xx, this bit is the transfer error
	 * mask bit, which should not be changed.
	 */
	if ((chan->feature & FSL_DMA_IP_MASK) == FSL_DMA_IP_85XX) {
		mode |= FSL_DMA_MR_CA;
		FUNC3(chan, mode);

		mode &= ~FSL_DMA_MR_CA;
	}

	/* stop the DMA controller */
	mode &= ~(FSL_DMA_MR_CS | FSL_DMA_MR_EMS_EN);
	FUNC3(chan, mode);

	/* wait for the DMA controller to become idle */
	for (i = 0; i < 100; i++) {
		if (FUNC1(chan))
			return;

		FUNC4(10);
	}

	if (!FUNC1(chan))
		FUNC0(chan, "DMA halt timeout!\n");
}