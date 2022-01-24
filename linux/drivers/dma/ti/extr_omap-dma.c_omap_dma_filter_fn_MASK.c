#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct omap_dmadev {unsigned int dma_requests; } ;
struct omap_chan {unsigned int dma_sig; } ;
struct dma_chan {TYPE_2__* device; } ;
struct TYPE_6__ {int /*<<< orphan*/  driver; } ;
struct TYPE_5__ {TYPE_1__* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/ * driver; } ;

/* Variables and functions */
 TYPE_3__ omap_dma_driver ; 
 struct omap_chan* FUNC0 (struct dma_chan*) ; 
 struct omap_dmadev* FUNC1 (TYPE_2__*) ; 

__attribute__((used)) static bool FUNC2(struct dma_chan *chan, void *param)
{
	if (chan->device->dev->driver == &omap_dma_driver.driver) {
		struct omap_dmadev *od = FUNC1(chan->device);
		struct omap_chan *c = FUNC0(chan);
		unsigned req = *(unsigned *)param;

		if (req <= od->dma_requests) {
			c->dma_sig = req;
			return true;
		}
	}
	return false;
}