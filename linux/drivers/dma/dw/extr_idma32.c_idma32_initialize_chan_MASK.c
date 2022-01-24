#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_2__ {int dst_id; int src_id; } ;
struct dw_dma_chan {TYPE_1__ dws; } ;

/* Variables and functions */
 int /*<<< orphan*/  CFG_HI ; 
 int /*<<< orphan*/  CFG_LO ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int IDMA32C_CFGL_DST_BURST_ALIGN ; 
 int IDMA32C_CFGL_SRC_BURST_ALIGN ; 
 int /*<<< orphan*/  FUNC4 (struct dw_dma_chan*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct dw_dma_chan *dwc)
{
	u32 cfghi = 0;
	u32 cfglo = 0;

	/* Set default burst alignment */
	cfglo |= IDMA32C_CFGL_DST_BURST_ALIGN | IDMA32C_CFGL_SRC_BURST_ALIGN;

	/* Low 4 bits of the request lines */
	cfghi |= FUNC0(dwc->dws.dst_id & 0xf);
	cfghi |= FUNC2(dwc->dws.src_id & 0xf);

	/* Request line extension (2 bits) */
	cfghi |= FUNC1(dwc->dws.dst_id >> 4 & 0x3);
	cfghi |= FUNC3(dwc->dws.src_id >> 4 & 0x3);

	FUNC4(dwc, CFG_LO, cfglo);
	FUNC4(dwc, CFG_HI, cfghi);
}