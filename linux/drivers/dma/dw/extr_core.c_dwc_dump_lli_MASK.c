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
struct dw_desc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ctlhi ; 
 int /*<<< orphan*/  ctllo ; 
 int /*<<< orphan*/  dar ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dw_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  llp ; 
 int /*<<< orphan*/  sar ; 

__attribute__((used)) static inline void FUNC3(struct dw_dma_chan *dwc, struct dw_desc *desc)
{
	FUNC1(FUNC0(&dwc->chan), "  desc: s0x%x d0x%x l0x%x c0x%x:%x\n",
		 FUNC2(desc, sar),
		 FUNC2(desc, dar),
		 FUNC2(desc, llp),
		 FUNC2(desc, ctlhi),
		 FUNC2(desc, ctllo));
}