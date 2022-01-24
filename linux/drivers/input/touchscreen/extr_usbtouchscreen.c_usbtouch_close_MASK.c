#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct usbtouch_usb {int is_open; TYPE_2__* interface; int /*<<< orphan*/  pm_mutex; int /*<<< orphan*/  irq; TYPE_1__* type; } ;
struct input_dev {int dummy; } ;
struct TYPE_5__ {scalar_t__ needs_remote_wakeup; } ;
struct TYPE_4__ {int /*<<< orphan*/  irq_always; } ;

/* Variables and functions */
 struct usbtouch_usb* FUNC0 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct input_dev *input)
{
	struct usbtouch_usb *usbtouch = FUNC0(input);
	int r;

	FUNC1(&usbtouch->pm_mutex);
	if (!usbtouch->type->irq_always)
		FUNC5(usbtouch->irq);
	usbtouch->is_open = false;
	FUNC2(&usbtouch->pm_mutex);

	r = FUNC3(usbtouch->interface);
	usbtouch->interface->needs_remote_wakeup = 0;
	if (!r)
		FUNC4(usbtouch->interface);
}