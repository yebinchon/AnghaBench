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
struct TYPE_2__ {int /*<<< orphan*/  chan; } ;
struct virt_dma_desc {TYPE_1__ tx; } ;
struct usb_dmac_desc {int dummy; } ;
struct usb_dmac_chan {int dummy; } ;

/* Variables and functions */
 struct usb_dmac_chan* FUNC0 (int /*<<< orphan*/ ) ; 
 struct usb_dmac_desc* FUNC1 (struct virt_dma_desc*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_dmac_chan*,struct usb_dmac_desc*) ; 

__attribute__((used)) static void FUNC3(struct virt_dma_desc *vd)
{
	struct usb_dmac_desc *desc = FUNC1(vd);
	struct usb_dmac_chan *chan = FUNC0(vd->tx.chan);

	FUNC2(chan, desc);
}