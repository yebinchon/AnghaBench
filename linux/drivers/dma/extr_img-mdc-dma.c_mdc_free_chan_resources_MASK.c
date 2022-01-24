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
struct mdc_dma {TYPE_1__* soc; } ;
struct mdc_chan {struct mdc_dma* mdma; } ;
struct dma_chan {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* disable_chan ) (struct mdc_chan*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dma_chan*) ; 
 struct device* FUNC1 (struct mdc_dma*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct mdc_chan*) ; 
 struct mdc_chan* FUNC4 (struct dma_chan*) ; 

__attribute__((used)) static void FUNC5(struct dma_chan *chan)
{
	struct mdc_chan *mchan = FUNC4(chan);
	struct mdc_dma *mdma = mchan->mdma;
	struct device *dev = FUNC1(mdma);

	FUNC0(chan);
	mdma->soc->disable_chan(mchan);
	FUNC2(dev);
}