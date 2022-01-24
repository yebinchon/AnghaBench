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
struct hid_driver {int /*<<< orphan*/  (* match ) (struct hid_device*,int /*<<< orphan*/ ) ;} ;
struct hid_device {int /*<<< orphan*/  status; struct hid_driver* driver; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HID_STAT_REPROBED ; 
 int FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hid_ignore_special_drivers ; 
 int /*<<< orphan*/  FUNC2 (struct hid_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct hid_device* FUNC4 (struct device*) ; 

__attribute__((used)) static int FUNC5(struct device *dev, void *data)
{
	struct hid_driver *hdrv = data;
	struct hid_device *hdev = FUNC4(dev);

	if (hdev->driver == hdrv &&
	    !hdrv->match(hdev, hid_ignore_special_drivers) &&
	    !FUNC3(FUNC1(HID_STAT_REPROBED), &hdev->status))
		return FUNC0(dev);

	return 0;
}