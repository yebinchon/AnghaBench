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
 int FUNC0 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct usb_interface* FUNC3 (struct device*) ; 
 struct ims_pcu* FUNC4 (struct usb_interface*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
					  struct device_attribute *dattr,
					  const char *buf, size_t count)
{
	struct usb_interface *intf = FUNC3(dev);
	struct ims_pcu *pcu = FUNC4(intf);
	int error;
	u8 value;

	error = FUNC0(buf, 0, &value);
	if (error)
		return error;

	FUNC1(&pcu->cmd_mutex);
	pcu->ofn_reg_addr = value;
	FUNC2(&pcu->cmd_mutex);

	return count;
}