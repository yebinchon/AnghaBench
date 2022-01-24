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
struct fsldma_chan {int dummy; } ;

/* Variables and functions */
 int FSL_DMA_MR_SAHE ; 
 int FSL_DMA_MR_SAHTS_MASK ; 
 int FUNC0 (int) ; 
 int FUNC1 (struct fsldma_chan*) ; 
 int /*<<< orphan*/  FUNC2 (struct fsldma_chan*,int) ; 

__attribute__((used)) static void FUNC3(struct fsldma_chan *chan, int size)
{
	u32 mode;

	mode = FUNC1(chan);

	switch (size) {
	case 0:
		mode &= ~FSL_DMA_MR_SAHE;
		break;
	case 1:
	case 2:
	case 4:
	case 8:
		mode &= ~FSL_DMA_MR_SAHTS_MASK;
		mode |= FSL_DMA_MR_SAHE | (FUNC0(size) << 14);
		break;
	}

	FUNC2(chan, mode);
}