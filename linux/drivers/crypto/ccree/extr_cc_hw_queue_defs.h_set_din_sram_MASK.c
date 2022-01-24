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
struct cc_hw_desc {int* word; } ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 int DMA_SRAM ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  WORD1_DIN_DMA_MODE ; 
 int /*<<< orphan*/  WORD1_DIN_SIZE ; 

__attribute__((used)) static inline void FUNC1(struct cc_hw_desc *pdesc, dma_addr_t addr,
				u32 size)
{
	pdesc->word[0] = (u32)addr;
	pdesc->word[1] |= FUNC0(WORD1_DIN_SIZE, size) |
				FUNC0(WORD1_DIN_DMA_MODE, DMA_SRAM);
}