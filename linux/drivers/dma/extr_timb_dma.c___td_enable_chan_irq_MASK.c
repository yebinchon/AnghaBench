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
typedef  int u32 ;
struct TYPE_2__ {int chan_id; } ;
struct timb_dma_chan {TYPE_1__ chan; } ;
struct timb_dma {scalar_t__ membase; } ;

/* Variables and functions */
 scalar_t__ TIMBDMA_IER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 
 struct timb_dma* FUNC4 (struct timb_dma_chan*) ; 

__attribute__((used)) static void FUNC5(struct timb_dma_chan *td_chan)
{
	int id = td_chan->chan.chan_id;
	struct timb_dma *td = FUNC4(td_chan);
	u32 ier;

	/* enable interrupt for this channel */
	ier = FUNC2(td->membase + TIMBDMA_IER);
	ier |= 1 << id;
	FUNC1(FUNC0(&td_chan->chan), "Enabling irq: %d, IER: 0x%x\n", id,
		ier);
	FUNC3(ier, td->membase + TIMBDMA_IER);
}