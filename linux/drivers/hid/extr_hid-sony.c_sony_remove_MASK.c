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
struct sony_sc {int quirks; TYPE_1__* hdev; scalar_t__ hw_version; scalar_t__ fw_version; } ;
struct hid_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int DUALSHOCK4_CONTROLLER_BT ; 
 int /*<<< orphan*/  dev_attr_bt_poll_interval ; 
 int /*<<< orphan*/  dev_attr_firmware_version ; 
 int /*<<< orphan*/  dev_attr_hardware_version ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct sony_sc* FUNC1 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct sony_sc*) ; 
 int /*<<< orphan*/  FUNC5 (struct sony_sc*) ; 
 int /*<<< orphan*/  FUNC6 (struct sony_sc*) ; 

__attribute__((used)) static void FUNC7(struct hid_device *hdev)
{
	struct sony_sc *sc = FUNC1(hdev);

	FUNC2(hdev);

	if (sc->quirks & DUALSHOCK4_CONTROLLER_BT)
		FUNC0(&sc->hdev->dev, &dev_attr_bt_poll_interval);

	if (sc->fw_version)
		FUNC0(&sc->hdev->dev, &dev_attr_firmware_version);

	if (sc->hw_version)
		FUNC0(&sc->hdev->dev, &dev_attr_hardware_version);

	FUNC4(sc);

	FUNC6(sc);

	FUNC5(sc);

	FUNC3(hdev);
}