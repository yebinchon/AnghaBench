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
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct usb_interface {TYPE_1__ dev; } ;
struct usb_device_id {scalar_t__ driver_info; } ;
struct usb_device {int dummy; } ;
struct ims_pcu {int bootloader_mode; int /*<<< orphan*/  data_intf; int /*<<< orphan*/  ctrl_intf; int /*<<< orphan*/  async_firmware_done; int /*<<< orphan*/  cmd_done; int /*<<< orphan*/  cmd_mutex; struct usb_device* udev; TYPE_1__* dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ IMS_PCU_BOOTLOADER_MODE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  ims_pcu_attr_group ; 
 int FUNC1 (struct ims_pcu*) ; 
 int /*<<< orphan*/  FUNC2 (struct ims_pcu*) ; 
 int /*<<< orphan*/  ims_pcu_driver ; 
 int FUNC3 (struct ims_pcu*) ; 
 int FUNC4 (struct ims_pcu*) ; 
 int FUNC5 (struct ims_pcu*) ; 
 int FUNC6 (struct usb_interface*,struct ims_pcu*) ; 
 int FUNC7 (struct ims_pcu*) ; 
 int /*<<< orphan*/  FUNC8 (struct ims_pcu*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct usb_device* FUNC10 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC11 (struct ims_pcu*) ; 
 struct ims_pcu* FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ims_pcu*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,struct ims_pcu*) ; 

__attribute__((used)) static int FUNC19(struct usb_interface *intf,
			 const struct usb_device_id *id)
{
	struct usb_device *udev = FUNC10(intf);
	struct ims_pcu *pcu;
	int error;

	pcu = FUNC12(sizeof(struct ims_pcu), GFP_KERNEL);
	if (!pcu)
		return -ENOMEM;

	pcu->dev = &intf->dev;
	pcu->udev = udev;
	pcu->bootloader_mode = id->driver_info == IMS_PCU_BOOTLOADER_MODE;
	FUNC13(&pcu->cmd_mutex);
	FUNC9(&pcu->cmd_done);
	FUNC9(&pcu->async_firmware_done);

	error = FUNC6(intf, pcu);
	if (error)
		goto err_free_mem;

	error = FUNC16(&ims_pcu_driver,
					   pcu->data_intf, pcu);
	if (error) {
		FUNC0(&intf->dev,
			"Unable to claim corresponding data interface: %d\n",
			error);
		goto err_free_mem;
	}

	FUNC18(pcu->ctrl_intf, pcu);
	FUNC18(pcu->data_intf, pcu);

	error = FUNC1(pcu);
	if (error)
		goto err_unclaim_intf;

	error = FUNC7(pcu);
	if (error)
		goto err_free_buffers;

	error = FUNC5(pcu);
	if (error)
		goto err_stop_io;

	error = FUNC14(&intf->dev.kobj, &ims_pcu_attr_group);
	if (error)
		goto err_stop_io;

	error = pcu->bootloader_mode ?
			FUNC4(pcu) :
			FUNC3(pcu);
	if (error)
		goto err_remove_sysfs;

	return 0;

err_remove_sysfs:
	FUNC15(&intf->dev.kobj, &ims_pcu_attr_group);
err_stop_io:
	FUNC8(pcu);
err_free_buffers:
	FUNC2(pcu);
err_unclaim_intf:
	FUNC17(&ims_pcu_driver, pcu->data_intf);
err_free_mem:
	FUNC11(pcu);
	return error;
}