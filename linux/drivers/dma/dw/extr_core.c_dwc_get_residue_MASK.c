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
typedef  scalar_t__ u32 ;
struct dw_dma_chan {int /*<<< orphan*/  lock; int /*<<< orphan*/  flags; } ;
struct dw_desc {scalar_t__ total_len; scalar_t__ residue; } ;
typedef  int /*<<< orphan*/  dma_cookie_t ;

/* Variables and functions */
 int /*<<< orphan*/  DW_DMA_IS_SOFT_LLP ; 
 struct dw_desc* FUNC0 (struct dw_dma_chan*,int /*<<< orphan*/ ) ; 
 struct dw_desc* FUNC1 (struct dw_dma_chan*) ; 
 scalar_t__ FUNC2 (struct dw_dma_chan*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static u32 FUNC6(struct dw_dma_chan *dwc, dma_cookie_t cookie)
{
	struct dw_desc *desc;
	unsigned long flags;
	u32 residue;

	FUNC3(&dwc->lock, flags);

	desc = FUNC0(dwc, cookie);
	if (desc) {
		if (desc == FUNC1(dwc)) {
			residue = desc->residue;
			if (FUNC5(DW_DMA_IS_SOFT_LLP, &dwc->flags) && residue)
				residue -= FUNC2(dwc);
		} else {
			residue = desc->total_len;
		}
	} else {
		residue = 0;
	}

	FUNC4(&dwc->lock, flags);
	return residue;
}