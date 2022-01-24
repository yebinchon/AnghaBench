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
struct of_phandle_args {int /*<<< orphan*/ * args; } ;
struct of_dma {struct bcm2835_dmadev* of_dma_data; } ;
struct dma_chan {int dummy; } ;
struct bcm2835_dmadev {int /*<<< orphan*/  ddev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dreq; } ;

/* Variables and functions */
 struct dma_chan* FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (struct dma_chan*) ; 

__attribute__((used)) static struct dma_chan *FUNC2(struct of_phandle_args *spec,
					   struct of_dma *ofdma)
{
	struct bcm2835_dmadev *d = ofdma->of_dma_data;
	struct dma_chan *chan;

	chan = FUNC0(&d->ddev);
	if (!chan)
		return NULL;

	/* Set DREQ from param */
	FUNC1(chan)->dreq = spec->args[0];

	return chan;
}