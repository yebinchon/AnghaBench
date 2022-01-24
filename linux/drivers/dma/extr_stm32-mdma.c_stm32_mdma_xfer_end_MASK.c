#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct stm32_mdma_chan {int busy; TYPE_1__* desc; } ;
struct TYPE_4__ {int /*<<< orphan*/  node; } ;
struct TYPE_3__ {TYPE_2__ vdesc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct stm32_mdma_chan*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC3(struct stm32_mdma_chan *chan)
{
	FUNC0(&chan->desc->vdesc.node);
	FUNC2(&chan->desc->vdesc);
	chan->desc = NULL;
	chan->busy = false;

	/* Start the next transfer if this driver has a next desc */
	FUNC1(chan);
}