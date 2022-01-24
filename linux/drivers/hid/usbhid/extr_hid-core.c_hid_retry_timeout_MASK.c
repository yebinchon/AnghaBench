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
struct usbhid_device {TYPE_1__* intf; struct hid_device* hid; } ;
struct timer_list {int dummy; } ;
struct hid_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct usbhid_device* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hid_device*) ; 
 scalar_t__ FUNC3 (struct hid_device*) ; 
 int /*<<< orphan*/  io_retry ; 
 struct usbhid_device* usbhid ; 

__attribute__((used)) static void FUNC4(struct timer_list *t)
{
	struct usbhid_device *usbhid = FUNC1(usbhid, t, io_retry);
	struct hid_device *hid = usbhid->hid;

	FUNC0(&usbhid->intf->dev, "retrying intr urb\n");
	if (FUNC3(hid))
		FUNC2(hid);
}