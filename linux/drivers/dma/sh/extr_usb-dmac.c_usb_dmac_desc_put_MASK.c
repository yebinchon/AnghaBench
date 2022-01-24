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
struct usb_dmac_desc {int /*<<< orphan*/  node; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct usb_dmac_chan {TYPE_1__ vc; int /*<<< orphan*/  desc_freed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct usb_dmac_chan *chan,
			      struct usb_dmac_desc *desc)
{
	unsigned long flags;

	FUNC1(&chan->vc.lock, flags);
	FUNC0(&desc->node, &chan->desc_freed);
	FUNC2(&chan->vc.lock, flags);
}