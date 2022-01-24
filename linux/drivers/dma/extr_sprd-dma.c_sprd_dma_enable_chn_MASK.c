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
struct sprd_dma_chn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SPRD_DMA_CHN_CFG ; 
 int /*<<< orphan*/  SPRD_DMA_CHN_EN ; 
 int /*<<< orphan*/  FUNC0 (struct sprd_dma_chn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct sprd_dma_chn *schan)
{
	FUNC0(schan, SPRD_DMA_CHN_CFG, SPRD_DMA_CHN_EN,
			    SPRD_DMA_CHN_EN);
}