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
struct usb_dmac_sg {int mem_addr; unsigned int size; } ;
struct usb_dmac_desc {scalar_t__ direction; struct usb_dmac_sg* sg; } ;
struct usb_dmac_chan {int dummy; } ;

/* Variables and functions */
 scalar_t__ DMA_DEV_TO_MEM ; 
 int /*<<< orphan*/  USB_DMADAR ; 
 int /*<<< orphan*/  USB_DMASAR ; 
 int FUNC0 (struct usb_dmac_chan*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC1(struct usb_dmac_chan *chan,
						 struct usb_dmac_desc *desc,
						 int sg_index)
{
	struct usb_dmac_sg *sg = desc->sg + sg_index;
	u32 mem_addr = sg->mem_addr & 0xffffffff;
	unsigned int residue = sg->size;

	/*
	 * We cannot use USB_DMATCR to calculate residue because USB_DMATCR
	 * has unsuited value to calculate.
	 */
	if (desc->direction == DMA_DEV_TO_MEM)
		residue -= FUNC0(chan, USB_DMADAR) - mem_addr;
	else
		residue -= FUNC0(chan, USB_DMASAR) - mem_addr;

	return residue;
}