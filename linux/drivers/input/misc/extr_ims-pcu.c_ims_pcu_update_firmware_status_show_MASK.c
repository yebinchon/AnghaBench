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
struct usb_interface {int dummy; } ;
struct ims_pcu {int /*<<< orphan*/  update_firmware_status; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct usb_interface* FUNC1 (struct device*) ; 
 struct ims_pcu* FUNC2 (struct usb_interface*) ; 

__attribute__((used)) static ssize_t
FUNC3(struct device *dev,
				    struct device_attribute *dattr,
				    char *buf)
{
	struct usb_interface *intf = FUNC1(dev);
	struct ims_pcu *pcu = FUNC2(intf);

	return FUNC0(buf, PAGE_SIZE, "%d\n", pcu->update_firmware_status);
}