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
struct ep93xx_dma_chan {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ M2P_CONTROL ; 
 int /*<<< orphan*/  M2P_CONTROL_NFBINT ; 
 int /*<<< orphan*/  M2P_CONTROL_STALLINT ; 
 scalar_t__ FUNC0 (struct ep93xx_dma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (struct ep93xx_dma_chan*) ; 
 int /*<<< orphan*/  FUNC2 (struct ep93xx_dma_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct ep93xx_dma_chan *edmac)
{
	u32 control = FUNC3(edmac->regs + M2P_CONTROL);

	FUNC1(edmac);
	control |= M2P_CONTROL_STALLINT;

	if (FUNC0(edmac)) {
		FUNC1(edmac);
		control |= M2P_CONTROL_NFBINT;
	}

	FUNC2(edmac, control);
}