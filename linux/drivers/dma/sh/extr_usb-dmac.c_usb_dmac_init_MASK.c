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
typedef  int u16 ;
struct usb_dmac {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  USB_DMAOR ; 
 int USB_DMAOR_AE ; 
 int USB_DMAOR_DME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct usb_dmac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_dmac*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct usb_dmac *dmac)
{
	u16 dmaor;

	/* Clear all channels and enable the DMAC globally. */
	FUNC2(dmac, USB_DMAOR, USB_DMAOR_DME);

	dmaor = FUNC1(dmac, USB_DMAOR);
	if ((dmaor & (USB_DMAOR_AE | USB_DMAOR_DME)) != USB_DMAOR_DME) {
		FUNC0(dmac->dev, "DMAOR initialization failed.\n");
		return -EIO;
	}

	return 0;
}