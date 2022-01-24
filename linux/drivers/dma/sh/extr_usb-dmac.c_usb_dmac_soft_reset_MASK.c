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
struct dma_chan {int /*<<< orphan*/  device; } ;
struct TYPE_2__ {struct dma_chan chan; } ;
struct usb_dmac_chan {TYPE_1__ vc; } ;
struct usb_dmac {int n_channels; } ;

/* Variables and functions */
 int /*<<< orphan*/  USB_DMAOR ; 
 int /*<<< orphan*/  USB_DMASWR ; 
 int USB_DMASWR_SWR ; 
 struct usb_dmac* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct usb_dmac_chan*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_dmac*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct usb_dmac_chan *uchan)
{
	struct dma_chan *chan = &uchan->vc.chan;
	struct usb_dmac *dmac = FUNC0(chan->device);
	int i;

	/* Don't issue soft reset if any one of channels is busy */
	for (i = 0; i < dmac->n_channels; ++i) {
		if (FUNC2(uchan))
			return;
	}

	FUNC3(dmac, USB_DMAOR, 0);
	FUNC3(dmac, USB_DMASWR, USB_DMASWR_SWR);
	FUNC1(100);
	FUNC3(dmac, USB_DMASWR, 0);
	FUNC3(dmac, USB_DMAOR, 1);
}