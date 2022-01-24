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
struct axi_dma_chan {int /*<<< orphan*/  chip; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int DMAC_CHAN_EN_SHIFT ; 
 int DMAC_CHAN_EN_WE_SHIFT ; 
 int /*<<< orphan*/  DMAC_CHEN ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC3(struct axi_dma_chan *chan)
{
	u32 val;

	val = FUNC1(chan->chip, DMAC_CHEN);
	val |= FUNC0(chan->id) << DMAC_CHAN_EN_SHIFT |
	       FUNC0(chan->id) << DMAC_CHAN_EN_WE_SHIFT;
	FUNC2(chan->chip, DMAC_CHEN, val);
}