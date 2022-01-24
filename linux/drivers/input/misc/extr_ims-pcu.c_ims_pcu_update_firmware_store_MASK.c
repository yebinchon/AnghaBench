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
struct ims_pcu {int /*<<< orphan*/  cmd_mutex; scalar_t__ bootloader_mode; int /*<<< orphan*/  dev; } ;
struct firmware {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  IMS_PCU_FIRMWARE_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct ims_pcu*,struct firmware const*) ; 
 int FUNC2 (struct ims_pcu*) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ ,int*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct firmware const*) ; 
 int FUNC7 (struct firmware const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct usb_interface* FUNC8 (struct device*) ; 
 struct ims_pcu* FUNC9 (struct usb_interface*) ; 

__attribute__((used)) static ssize_t FUNC10(struct device *dev,
					     struct device_attribute *dattr,
					     const char *buf, size_t count)
{
	struct usb_interface *intf = FUNC8(dev);
	struct ims_pcu *pcu = FUNC9(intf);
	const struct firmware *fw = NULL;
	int value;
	int error;

	error = FUNC3(buf, 0, &value);
	if (error)
		return error;

	if (value != 1)
		return -EINVAL;

	error = FUNC4(&pcu->cmd_mutex);
	if (error)
		return error;

	error = FUNC7(&fw, IMS_PCU_FIRMWARE_NAME, pcu->dev);
	if (error) {
		FUNC0(pcu->dev, "Failed to request firmware %s, error: %d\n",
			IMS_PCU_FIRMWARE_NAME, error);
		goto out;
	}

	/*
	 * If we are already in bootloader mode we can proceed with
	 * flashing the firmware.
	 *
	 * If we are in application mode, then we need to switch into
	 * bootloader mode, which will cause the device to disconnect
	 * and reconnect as different device.
	 */
	if (pcu->bootloader_mode)
		error = FUNC1(pcu, fw);
	else
		error = FUNC2(pcu);

	FUNC6(fw);

out:
	FUNC5(&pcu->cmd_mutex);
	return error ?: count;
}