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
struct hid_driver {int /*<<< orphan*/  (* remove ) (struct hid_device*) ;} ;
struct hid_device {int io_started; int /*<<< orphan*/  driver_input_lock; struct hid_driver* driver; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINTR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct hid_device*) ; 
 struct hid_device* FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct device *dev)
{
	struct hid_device *hdev = FUNC4(dev);
	struct hid_driver *hdrv;
	int ret = 0;

	if (FUNC0(&hdev->driver_input_lock)) {
		ret = -EINTR;
		goto end;
	}
	hdev->io_started = false;

	hdrv = hdev->driver;
	if (hdrv) {
		if (hdrv->remove)
			hdrv->remove(hdev);
		else /* default remove */
			FUNC2(hdev);
		FUNC1(hdev);
		hdev->driver = NULL;
	}

	if (!hdev->io_started)
		FUNC5(&hdev->driver_input_lock);
end:
	return ret;
}