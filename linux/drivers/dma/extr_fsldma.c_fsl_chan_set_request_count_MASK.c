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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FSL_DMA_MR_BWC_MASK ; 
 int FUNC1 (int) ; 
 int FUNC2 (struct fsldma_chan*) ; 
 int /*<<< orphan*/  FUNC3 (struct fsldma_chan*,int) ; 

__attribute__((used)) static void FUNC4(struct fsldma_chan *chan, int size)
{
	u32 mode;

	FUNC0(size > 1024);

	mode = FUNC2(chan);
	mode &= ~FSL_DMA_MR_BWC_MASK;
	mode |= (FUNC1(size) << 24) & FSL_DMA_MR_BWC_MASK;

	FUNC3(chan, mode);
}