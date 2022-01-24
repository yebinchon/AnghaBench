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
struct sprd_dma_chn {scalar_t__ chn_base; } ;

/* Variables and functions */
 scalar_t__ SPRD_DMA_CHN_CFG ; 
 int SPRD_DMA_CHN_EN ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct sprd_dma_chn*) ; 
 int /*<<< orphan*/  FUNC2 (struct sprd_dma_chn*,int) ; 

__attribute__((used)) static void FUNC3(struct sprd_dma_chn *schan)
{
	u32 cfg = FUNC0(schan->chn_base + SPRD_DMA_CHN_CFG);

	if (!(cfg & SPRD_DMA_CHN_EN))
		return;

	FUNC2(schan, true);
	FUNC1(schan);
}