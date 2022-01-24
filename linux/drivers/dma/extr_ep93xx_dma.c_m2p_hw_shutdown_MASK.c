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
struct ep93xx_dma_chan {int dummy; } ;

/* Variables and functions */
 scalar_t__ M2P_STATE_IDLE ; 
 int /*<<< orphan*/  FUNC0 (struct ep93xx_dma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (struct ep93xx_dma_chan*) ; 
 int /*<<< orphan*/  FUNC3 (struct ep93xx_dma_chan*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct ep93xx_dma_chan *edmac)
{
	FUNC3(edmac, 0);

	while (FUNC2(edmac) != M2P_STATE_IDLE)
		FUNC1(FUNC0(edmac), "M2P: Not yet IDLE\n");
}