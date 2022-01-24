#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct stm32_dma_chan {scalar_t__ next_sg; int busy; TYPE_1__* desc; } ;
struct TYPE_5__ {int /*<<< orphan*/  node; } ;
struct TYPE_4__ {scalar_t__ num_sgs; TYPE_2__ vdesc; scalar_t__ cyclic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct stm32_dma_chan*) ; 
 int /*<<< orphan*/  FUNC2 (struct stm32_dma_chan*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC5(struct stm32_dma_chan *chan)
{
	if (chan->desc) {
		if (chan->desc->cyclic) {
			FUNC4(&chan->desc->vdesc);
			chan->next_sg++;
			FUNC1(chan);
		} else {
			chan->busy = false;
			if (chan->next_sg == chan->desc->num_sgs) {
				FUNC0(&chan->desc->vdesc.node);
				FUNC3(&chan->desc->vdesc);
				chan->desc = NULL;
			}
			FUNC2(chan);
		}
	}
}