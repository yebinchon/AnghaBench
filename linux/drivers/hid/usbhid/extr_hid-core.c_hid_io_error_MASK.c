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
struct usbhid_device {int retry_delay; int /*<<< orphan*/  lock; int /*<<< orphan*/  io_retry; int /*<<< orphan*/  reset_work; int /*<<< orphan*/  iofl; scalar_t__ stop_retry; } ;
struct hid_device {struct usbhid_device* driver_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  HID_DISCONNECTED ; 
 int /*<<< orphan*/  HID_NO_BANDWIDTH ; 
 int /*<<< orphan*/  HID_RESET_PENDING ; 
 int HZ ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct hid_device *hid)
{
	unsigned long flags;
	struct usbhid_device *usbhid = hid->driver_data;

	FUNC3(&usbhid->lock, flags);

	/* Stop when disconnected */
	if (FUNC6(HID_DISCONNECTED, &usbhid->iofl))
		goto done;

	/* If it has been a while since the last error, we'll assume
	 * this a brand new error and reset the retry timeout. */
	if (FUNC7(jiffies, usbhid->stop_retry + HZ/2))
		usbhid->retry_delay = 0;

	/* When an error occurs, retry at increasing intervals */
	if (usbhid->retry_delay == 0) {
		usbhid->retry_delay = 13;	/* Then 26, 52, 104, 104, ... */
		usbhid->stop_retry = jiffies + FUNC1(1000);
	} else if (usbhid->retry_delay < 100)
		usbhid->retry_delay *= 2;

	if (FUNC7(jiffies, usbhid->stop_retry)) {

		/* Retries failed, so do a port reset unless we lack bandwidth*/
		if (!FUNC6(HID_NO_BANDWIDTH, &usbhid->iofl)
		     && !FUNC5(HID_RESET_PENDING, &usbhid->iofl)) {

			FUNC2(&usbhid->reset_work);
			goto done;
		}
	}

	FUNC0(&usbhid->io_retry,
			jiffies + FUNC1(usbhid->retry_delay));
done:
	FUNC4(&usbhid->lock, flags);
}