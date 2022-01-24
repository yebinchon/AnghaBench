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
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ u32 ;
struct axi_dma_chan {scalar_t__ chan_regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC3(struct axi_dma_chan *chan, u32 reg, u64 val)
{
	/*
	 * We split one 64 bit write for two 32 bit write as some HW doesn't
	 * support 64 bit access.
	 */
	FUNC0(FUNC1(val), chan->chan_regs + reg);
	FUNC0(FUNC2(val), chan->chan_regs + reg + 4);
}