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
struct usb_xpad {scalar_t__ xtype; int /*<<< orphan*/  irq_out_anchor; TYPE_1__* intf; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ XTYPE_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC3(struct usb_xpad *xpad)
{
	if (xpad->xtype != XTYPE_UNKNOWN) {
		if (!FUNC2(&xpad->irq_out_anchor,
						   5000)) {
			FUNC0(&xpad->intf->dev,
				 "timed out waiting for output URB to complete, killing\n");
			FUNC1(&xpad->irq_out_anchor);
		}
	}
}