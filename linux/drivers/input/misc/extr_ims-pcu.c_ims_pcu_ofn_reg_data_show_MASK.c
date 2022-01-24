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
typedef  int /*<<< orphan*/  u8 ;
struct usb_interface {int dummy; } ;
struct ims_pcu {int /*<<< orphan*/  cmd_mutex; int /*<<< orphan*/  ofn_reg_addr; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC0 (struct ims_pcu*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct usb_interface* FUNC4 (struct device*) ; 
 struct ims_pcu* FUNC5 (struct usb_interface*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
					 struct device_attribute *dattr,
					 char *buf)
{
	struct usb_interface *intf = FUNC4(dev);
	struct ims_pcu *pcu = FUNC5(intf);
	int error;
	u8 data;

	FUNC1(&pcu->cmd_mutex);
	error = FUNC0(pcu, pcu->ofn_reg_addr, &data);
	FUNC2(&pcu->cmd_mutex);

	if (error)
		return error;

	return FUNC3(buf, PAGE_SIZE, "%x\n", data);
}