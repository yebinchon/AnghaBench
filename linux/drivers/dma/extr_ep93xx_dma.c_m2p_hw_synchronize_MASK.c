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
struct ep93xx_dma_chan {int /*<<< orphan*/  lock; scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ M2P_CONTROL ; 
 int M2P_CONTROL_NFBINT ; 
 int M2P_CONTROL_STALLINT ; 
 scalar_t__ M2P_STATE_ON ; 
 scalar_t__ FUNC0 (struct ep93xx_dma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (struct ep93xx_dma_chan*,int) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct ep93xx_dma_chan *edmac)
{
	unsigned long flags;
	u32 control;

	FUNC4(&edmac->lock, flags);
	control = FUNC2(edmac->regs + M2P_CONTROL);
	control &= ~(M2P_CONTROL_STALLINT | M2P_CONTROL_NFBINT);
	FUNC1(edmac, control);
	FUNC5(&edmac->lock, flags);

	while (FUNC0(edmac) >= M2P_STATE_ON)
		FUNC3();
}