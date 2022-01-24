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
struct usb_dmac_desc {unsigned int sg_allocated_len; int /*<<< orphan*/  node; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct usb_dmac_chan {TYPE_1__ vc; int /*<<< orphan*/  desc_freed; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct usb_dmac_desc* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sg ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_dmac_desc*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC6(struct usb_dmac_chan *chan, unsigned int sg_len,
			       gfp_t gfp)
{
	struct usb_dmac_desc *desc;
	unsigned long flags;

	desc = FUNC1(FUNC5(desc, sg, sg_len), gfp);
	if (!desc)
		return -ENOMEM;

	desc->sg_allocated_len = sg_len;
	FUNC0(&desc->node);

	FUNC3(&chan->vc.lock, flags);
	FUNC2(&desc->node, &chan->desc_freed);
	FUNC4(&chan->vc.lock, flags);

	return 0;
}