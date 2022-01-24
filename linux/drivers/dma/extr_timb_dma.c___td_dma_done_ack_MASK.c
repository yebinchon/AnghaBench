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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct TYPE_2__ {int chan_id; } ;
struct timb_dma_chan {TYPE_1__ chan; } ;
struct timb_dma {scalar_t__ membase; } ;

/* Variables and functions */
 scalar_t__ TIMBDMA_ISR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,struct timb_dma*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static bool FUNC4(struct timb_dma_chan *td_chan)
{
	int id = td_chan->chan.chan_id;
	struct timb_dma *td = (struct timb_dma *)((u8 *)td_chan -
		id * sizeof(struct timb_dma_chan) - sizeof(struct timb_dma));
	u32 isr;
	bool done = false;

	FUNC1(FUNC0(&td_chan->chan), "Checking irq: %d, td: %p\n", id, td);

	isr = FUNC2(td->membase + TIMBDMA_ISR) & (1 << id);
	if (isr) {
		FUNC3(isr, td->membase + TIMBDMA_ISR);
		done = true;
	}

	return done;
}