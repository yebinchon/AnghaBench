#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct usbtouch_usb {int is_open; TYPE_3__* interface; int /*<<< orphan*/  pm_mutex; TYPE_2__* irq; TYPE_1__* type; } ;
struct input_dev {int dummy; } ;
struct TYPE_8__ {int needs_remote_wakeup; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  irq_always; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct usbtouch_usb* FUNC0 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 scalar_t__ FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct input_dev *input)
{
	struct usbtouch_usb *usbtouch = FUNC0(input);
	int r;

	usbtouch->irq->dev = FUNC1(usbtouch->interface);

	r = FUNC4(usbtouch->interface) ? -EIO : 0;
	if (r < 0)
		goto out;

	FUNC2(&usbtouch->pm_mutex);
	if (!usbtouch->type->irq_always) {
		if (FUNC6(usbtouch->irq, GFP_KERNEL)) {
			r = -EIO;
			goto out_put;
		}
	}

	usbtouch->interface->needs_remote_wakeup = 1;
	usbtouch->is_open = true;
out_put:
	FUNC3(&usbtouch->pm_mutex);
	FUNC5(usbtouch->interface);
out:
	return r;
}