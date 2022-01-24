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
struct fsldma_chan {int feature; } ;

/* Variables and functions */
 int FSL_DMA_CHAN_PAUSE_EXT ; 
 int FSL_DMA_CHAN_START_EXT ; 
 int /*<<< orphan*/  FSL_DMA_MR_CS ; 
 int /*<<< orphan*/  FSL_DMA_MR_EMP_EN ; 
 int /*<<< orphan*/  FSL_DMA_MR_EMS_EN ; 
 int /*<<< orphan*/  FUNC0 (struct fsldma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (struct fsldma_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fsldma_chan*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct fsldma_chan *chan)
{
	u32 mode;

	mode = FUNC0(chan);

	if (chan->feature & FSL_DMA_CHAN_PAUSE_EXT) {
		FUNC1(chan, 0);
		mode |= FSL_DMA_MR_EMP_EN;
	} else {
		mode &= ~FSL_DMA_MR_EMP_EN;
	}

	if (chan->feature & FSL_DMA_CHAN_START_EXT) {
		mode |= FSL_DMA_MR_EMS_EN;
	} else {
		mode &= ~FSL_DMA_MR_EMS_EN;
		mode |= FSL_DMA_MR_CS;
	}

	FUNC2(chan, mode);
}