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
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct usb_dmac_chan {TYPE_2__ vc; } ;
struct dma_chan {TYPE_1__* device; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct usb_dmac_chan* FUNC3 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_dmac_chan*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_dmac_chan*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC7(struct dma_chan *chan)
{
	struct usb_dmac_chan *uchan = FUNC3(chan);
	unsigned long flags;

	/* Protect against ISR */
	FUNC1(&uchan->vc.lock, flags);
	FUNC4(uchan);
	FUNC2(&uchan->vc.lock, flags);

	FUNC5(uchan);
	FUNC6(&uchan->vc);

	FUNC0(chan->device->dev);
}