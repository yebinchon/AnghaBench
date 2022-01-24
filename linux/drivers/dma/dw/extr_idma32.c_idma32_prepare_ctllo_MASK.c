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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct dma_slave_config {int /*<<< orphan*/  dst_maxburst; int /*<<< orphan*/  src_maxburst; } ;
struct dw_dma_chan {int /*<<< orphan*/  direction; struct dma_slave_config dma_sconfig; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int DWC_CTLL_LLP_D_EN ; 
 int DWC_CTLL_LLP_S_EN ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDMA32_MSIZE_8 ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC3(struct dw_dma_chan *dwc)
{
	struct dma_slave_config	*sconfig = &dwc->dma_sconfig;
	bool is_slave = FUNC2(dwc->direction);
	u8 smsize = is_slave ? sconfig->src_maxburst : IDMA32_MSIZE_8;
	u8 dmsize = is_slave ? sconfig->dst_maxburst : IDMA32_MSIZE_8;

	return DWC_CTLL_LLP_D_EN | DWC_CTLL_LLP_S_EN |
	       FUNC0(dmsize) | FUNC1(smsize);
}