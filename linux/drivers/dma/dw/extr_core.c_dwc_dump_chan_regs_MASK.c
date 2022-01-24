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
struct dw_dma_chan {int /*<<< orphan*/  chan; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTL_HI ; 
 int /*<<< orphan*/  CTL_LO ; 
 int /*<<< orphan*/  DAR ; 
 int /*<<< orphan*/  LLP ; 
 int /*<<< orphan*/  SAR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct dw_dma_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(struct dw_dma_chan *dwc)
{
	FUNC2(FUNC0(&dwc->chan),
		"  SAR: 0x%x DAR: 0x%x LLP: 0x%x CTL: 0x%x:%08x\n",
		FUNC1(dwc, SAR),
		FUNC1(dwc, DAR),
		FUNC1(dwc, LLP),
		FUNC1(dwc, CTL_HI),
		FUNC1(dwc, CTL_LO));
}