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
struct usb_dmac_chan {scalar_t__ descs_allocated; } ;
struct dma_chan {TYPE_1__* device; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ USB_DMAC_INITIAL_NR_DESC ; 
 int /*<<< orphan*/  USB_DMAC_INITIAL_NR_SG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct usb_dmac_chan* FUNC1 (struct dma_chan*) ; 
 int FUNC2 (struct usb_dmac_chan*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_dmac_chan*) ; 

__attribute__((used)) static int FUNC4(struct dma_chan *chan)
{
	struct usb_dmac_chan *uchan = FUNC1(chan);
	int ret;

	while (uchan->descs_allocated < USB_DMAC_INITIAL_NR_DESC) {
		ret = FUNC2(uchan, USB_DMAC_INITIAL_NR_SG,
					  GFP_KERNEL);
		if (ret < 0) {
			FUNC3(uchan);
			return ret;
		}
		uchan->descs_allocated++;
	}

	return FUNC0(chan->device->dev);
}