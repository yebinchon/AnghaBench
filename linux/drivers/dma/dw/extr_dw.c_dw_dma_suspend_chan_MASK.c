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
struct dw_dma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CFG_LO ; 
 int DWC_CFGL_CH_SUSP ; 
 int FUNC0 (struct dw_dma_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dw_dma_chan*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct dw_dma_chan *dwc, bool drain)
{
	u32 cfglo = FUNC0(dwc, CFG_LO);

	FUNC1(dwc, CFG_LO, cfglo | DWC_CFGL_CH_SUSP);
}