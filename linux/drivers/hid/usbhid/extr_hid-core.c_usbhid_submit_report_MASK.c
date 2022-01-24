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
struct usbhid_device {int /*<<< orphan*/  lock; } ;
struct hid_report {int dummy; } ;
struct hid_device {struct usbhid_device* driver_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hid_device*,struct hid_report*,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct hid_device *hid, struct hid_report *report, unsigned char dir)
{
	struct usbhid_device *usbhid = hid->driver_data;
	unsigned long flags;

	FUNC1(&usbhid->lock, flags);
	FUNC0(hid, report, dir);
	FUNC2(&usbhid->lock, flags);
}