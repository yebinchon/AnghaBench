#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct synusb {int is_open; TYPE_1__* intf; int /*<<< orphan*/  pm_mutex; int /*<<< orphan*/  urb; } ;
struct input_dev {int dummy; } ;
struct TYPE_3__ {scalar_t__ needs_remote_wakeup; } ;

/* Variables and functions */
 struct synusb* FUNC0 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct input_dev *dev)
{
	struct synusb *synusb = FUNC0(dev);
	int autopm_error;

	autopm_error = FUNC3(synusb->intf);

	FUNC1(&synusb->pm_mutex);
	FUNC5(synusb->urb);
	synusb->intf->needs_remote_wakeup = 0;
	synusb->is_open = false;
	FUNC2(&synusb->pm_mutex);

	if (!autopm_error)
		FUNC4(synusb->intf);
}