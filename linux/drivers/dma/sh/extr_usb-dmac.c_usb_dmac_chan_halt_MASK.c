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
typedef  int u32 ;
struct usb_dmac_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  USB_DMACHCR ; 
 int USB_DMACHCR_DE ; 
 int USB_DMACHCR_IE ; 
 int USB_DMACHCR_TE ; 
 int FUNC0 (struct usb_dmac_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_dmac_chan*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_dmac_chan*) ; 

__attribute__((used)) static void FUNC3(struct usb_dmac_chan *chan)
{
	u32 chcr = FUNC0(chan, USB_DMACHCR);

	chcr &= ~(USB_DMACHCR_IE | USB_DMACHCR_TE | USB_DMACHCR_DE);
	FUNC1(chan, USB_DMACHCR, chcr);

	FUNC2(chan);
}