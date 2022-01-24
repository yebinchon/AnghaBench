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
typedef  int /*<<< orphan*/  u32 ;
struct axi_dma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CH_INTSTATUS_ENA ; 
 int /*<<< orphan*/  DWAXIDMAC_IRQ_ALL ; 
 int /*<<< orphan*/  DWAXIDMAC_IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct axi_dma_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct axi_dma_chan*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static inline void FUNC3(struct axi_dma_chan *chan, u32 irq_mask)
{
	u32 val;

	if (FUNC2(irq_mask == DWAXIDMAC_IRQ_ALL)) {
		FUNC1(chan, CH_INTSTATUS_ENA, DWAXIDMAC_IRQ_NONE);
	} else {
		val = FUNC0(chan, CH_INTSTATUS_ENA);
		val &= ~irq_mask;
		FUNC1(chan, CH_INTSTATUS_ENA, val);
	}
}