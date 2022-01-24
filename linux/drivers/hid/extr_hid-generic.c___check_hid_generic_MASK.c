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
struct hid_driver {int dummy; } ;
struct hid_device {int dummy; } ;
struct device_driver {int dummy; } ;

/* Variables and functions */
 struct hid_driver hid_generic ; 
 int /*<<< orphan*/ * FUNC0 (struct hid_device*,struct hid_driver*) ; 
 struct hid_driver* FUNC1 (struct device_driver*) ; 

__attribute__((used)) static int FUNC2(struct device_driver *drv, void *data)
{
	struct hid_driver *hdrv = FUNC1(drv);
	struct hid_device *hdev = data;

	if (hdrv == &hid_generic)
		return 0;

	return FUNC0(hdev, hdrv) != NULL;
}