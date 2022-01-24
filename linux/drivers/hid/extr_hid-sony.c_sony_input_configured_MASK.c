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
struct sony_sc {int quirks; int defer_initialization; int hotplug_worker_initialized; struct hid_device* hdev; scalar_t__ hw_version; scalar_t__ fw_version; scalar_t__ ds4_bt_poll_interval; int /*<<< orphan*/  ds4_dongle_state; int /*<<< orphan*/  hotplug_worker; } ;
struct hid_input {int dummy; } ;
struct hid_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  quirks; } ;

/* Variables and functions */
 int /*<<< orphan*/  DONGLE_DISCONNECTED ; 
 scalar_t__ DS4_BT_DEFAULT_POLL_INTERVAL_MS ; 
 int DUALSHOCK4_CONTROLLER ; 
 int DUALSHOCK4_CONTROLLER_BT ; 
 int DUALSHOCK4_DONGLE ; 
 int /*<<< orphan*/  HID_QUIRK_NO_OUTPUT_REPORTS_ON_INTR_EP ; 
 int /*<<< orphan*/  HID_QUIRK_SKIP_OUTPUT_REPORT_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int MOTION_CONTROLLER ; 
 int NAVIGATION_CONTROLLER_BT ; 
 int NAVIGATION_CONTROLLER_USB ; 
 int NSG_MRXU_MAX_X ; 
 int NSG_MRXU_MAX_Y ; 
 int NSG_MRXU_REMOTE ; 
 int SIXAXIS_CONTROLLER_BT ; 
 int SIXAXIS_CONTROLLER_USB ; 
 int SONY_BATTERY_SUPPORT ; 
 int SONY_FF_SUPPORT ; 
 int SONY_LED_SUPPORT ; 
 int /*<<< orphan*/  dev_attr_bt_poll_interval ; 
 int /*<<< orphan*/  dev_attr_firmware_version ; 
 int /*<<< orphan*/  dev_attr_hardware_version ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dualshock4_calibration_work ; 
 int FUNC3 (struct sony_sc*) ; 
 int FUNC4 (struct sony_sc*) ; 
 int /*<<< orphan*/  dualshock4_send_output_report ; 
 int /*<<< orphan*/  FUNC5 (struct hid_device*,char*,...) ; 
 struct sony_sc* FUNC6 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct hid_device*) ; 
 int FUNC8 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct hid_device*,char*,int) ; 
 int /*<<< orphan*/  motion_send_output_report ; 
 int /*<<< orphan*/  sixaxis_send_output_report ; 
 int FUNC10 (struct hid_device*) ; 
 int FUNC11 (struct hid_device*) ; 
 int FUNC12 (struct sony_sc*) ; 
 int FUNC13 (struct sony_sc*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct sony_sc*) ; 
 int FUNC15 (struct sony_sc*) ; 
 int FUNC16 (struct sony_sc*) ; 
 int /*<<< orphan*/  FUNC17 (struct sony_sc*,int /*<<< orphan*/ ) ; 
 int FUNC18 (struct sony_sc*) ; 
 int FUNC19 (struct sony_sc*) ; 
 int FUNC20 (struct sony_sc*,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC21 (struct sony_sc*) ; 
 int /*<<< orphan*/  FUNC22 (struct sony_sc*) ; 
 int FUNC23 (struct sony_sc*) ; 

__attribute__((used)) static int FUNC24(struct hid_device *hdev,
					struct hid_input *hidinput)
{
	struct sony_sc *sc = FUNC6(hdev);
	int append_dev_id;
	int ret;

	ret = FUNC23(sc);
	if (ret < 0) {
		FUNC5(hdev, "failed to allocate the device id\n");
		goto err_stop;
	}

	ret = append_dev_id = FUNC15(sc);
	if (ret < 0)
		goto err_stop;

	ret = FUNC12(sc);
	if (ret < 0) {
		FUNC5(hdev, "failed to allocate the output report buffer\n");
		goto err_stop;
	}

	if (sc->quirks & NAVIGATION_CONTROLLER_USB) {
		/*
		 * The Sony Sixaxis does not handle HID Output Reports on the
		 * Interrupt EP like it could, so we need to force HID Output
		 * Reports to use HID_REQ_SET_REPORT on the Control EP.
		 *
		 * There is also another issue about HID Output Reports via USB,
		 * the Sixaxis does not want the report_id as part of the data
		 * packet, so we have to discard buf[0] when sending the actual
		 * control message, even for numbered reports, humpf!
		 *
		 * Additionally, the Sixaxis on USB isn't properly initialized
		 * until the PS logo button is pressed and as such won't retain
		 * any state set by an output report, so the initial
		 * configuration report is deferred until the first input
		 * report arrives.
		 */
		hdev->quirks |= HID_QUIRK_NO_OUTPUT_REPORTS_ON_INTR_EP;
		hdev->quirks |= HID_QUIRK_SKIP_OUTPUT_REPORT_ID;
		sc->defer_initialization = 1;

		ret = FUNC11(hdev);
		if (ret < 0) {
			FUNC5(hdev, "Failed to set controller into operational mode\n");
			goto err_stop;
		}

		FUNC17(sc, sixaxis_send_output_report);
	} else if (sc->quirks & NAVIGATION_CONTROLLER_BT) {
		/*
		 * The Navigation controller wants output reports sent on the ctrl
		 * endpoint when connected via Bluetooth.
		 */
		hdev->quirks |= HID_QUIRK_NO_OUTPUT_REPORTS_ON_INTR_EP;

		ret = FUNC10(hdev);
		if (ret < 0) {
			FUNC5(hdev, "Failed to set controller into operational mode\n");
			goto err_stop;
		}

		FUNC17(sc, sixaxis_send_output_report);
	} else if (sc->quirks & SIXAXIS_CONTROLLER_USB) {
		/*
		 * The Sony Sixaxis does not handle HID Output Reports on the
		 * Interrupt EP and the device only becomes active when the
		 * PS button is pressed. See comment for Navigation controller
		 * above for more details.
		 */
		hdev->quirks |= HID_QUIRK_NO_OUTPUT_REPORTS_ON_INTR_EP;
		hdev->quirks |= HID_QUIRK_SKIP_OUTPUT_REPORT_ID;
		sc->defer_initialization = 1;

		ret = FUNC11(hdev);
		if (ret < 0) {
			FUNC5(hdev, "Failed to set controller into operational mode\n");
			goto err_stop;
		}

		ret = FUNC19(sc);
		if (ret) {
			FUNC5(sc->hdev,
			"Unable to initialize motion sensors: %d\n", ret);
			goto err_stop;
		}

		FUNC17(sc, sixaxis_send_output_report);
	} else if (sc->quirks & SIXAXIS_CONTROLLER_BT) {
		/*
		 * The Sixaxis wants output reports sent on the ctrl endpoint
		 * when connected via Bluetooth.
		 */
		hdev->quirks |= HID_QUIRK_NO_OUTPUT_REPORTS_ON_INTR_EP;

		ret = FUNC10(hdev);
		if (ret < 0) {
			FUNC5(hdev, "Failed to set controller into operational mode\n");
			goto err_stop;
		}

		ret = FUNC19(sc);
		if (ret) {
			FUNC5(sc->hdev,
			"Unable to initialize motion sensors: %d\n", ret);
			goto err_stop;
		}

		FUNC17(sc, sixaxis_send_output_report);
	} else if (sc->quirks & DUALSHOCK4_CONTROLLER) {
		ret = FUNC3(sc);
		if (ret < 0) {
			FUNC5(hdev, "Failed to get calibration data from Dualshock 4\n");
			goto err_stop;
		}

		ret = FUNC4(sc);
		if (ret < 0) {
			FUNC5(sc->hdev, "Failed to get version data from Dualshock 4\n");
			goto err_stop;
		}

		ret = FUNC1(&sc->hdev->dev, &dev_attr_firmware_version);
		if (ret) {
			/* Make zero for cleanup reasons of sysfs entries. */
			sc->fw_version = 0;
			sc->hw_version = 0;
			FUNC5(sc->hdev, "can't create sysfs firmware_version attribute err: %d\n", ret);
			goto err_stop;
		}

		ret = FUNC1(&sc->hdev->dev, &dev_attr_hardware_version);
		if (ret) {
			sc->hw_version = 0;
			FUNC5(sc->hdev, "can't create sysfs hardware_version attribute err: %d\n", ret);
			goto err_stop;
		}

		/*
		 * The Dualshock 4 touchpad supports 2 touches and has a
		 * resolution of 1920x942 (44.86 dots/mm).
		 */
		ret = FUNC20(sc, 2, 1920, 942, 0, 0, 0);
		if (ret) {
			FUNC5(sc->hdev,
			"Unable to initialize multi-touch slots: %d\n",
			ret);
			goto err_stop;
		}

		ret = FUNC19(sc);
		if (ret) {
			FUNC5(sc->hdev,
			"Unable to initialize motion sensors: %d\n", ret);
			goto err_stop;
		}

		if (sc->quirks & DUALSHOCK4_CONTROLLER_BT) {
			sc->ds4_bt_poll_interval = DS4_BT_DEFAULT_POLL_INTERVAL_MS;
			ret = FUNC1(&sc->hdev->dev, &dev_attr_bt_poll_interval);
			if (ret)
				FUNC9(sc->hdev,
				 "can't create sysfs bt_poll_interval attribute err: %d\n",
				 ret);
		}

		if (sc->quirks & DUALSHOCK4_DONGLE) {
			FUNC0(&sc->hotplug_worker, dualshock4_calibration_work);
			sc->hotplug_worker_initialized = 1;
			sc->ds4_dongle_state = DONGLE_DISCONNECTED;
		}

		FUNC17(sc, dualshock4_send_output_report);
	} else if (sc->quirks & NSG_MRXU_REMOTE) {
		/*
		 * The NSG-MRxU touchpad supports 2 touches and has a
		 * resolution of 1667x1868
		 */
		ret = FUNC20(sc, 2,
			NSG_MRXU_MAX_X, NSG_MRXU_MAX_Y, 15, 15, 1);
		if (ret) {
			FUNC5(sc->hdev,
			"Unable to initialize multi-touch slots: %d\n",
			ret);
			goto err_stop;
		}

	} else if (sc->quirks & MOTION_CONTROLLER) {
		FUNC17(sc, motion_send_output_report);
	} else {
		ret = 0;
	}

	if (sc->quirks & SONY_LED_SUPPORT) {
		ret = FUNC18(sc);
		if (ret < 0)
			goto err_stop;
	}

	if (sc->quirks & SONY_BATTERY_SUPPORT) {
		ret = FUNC13(sc, append_dev_id);
		if (ret < 0)
			goto err_stop;

		/* Open the device to receive reports with battery info */
		ret = FUNC8(hdev);
		if (ret < 0) {
			FUNC5(hdev, "hw open failed\n");
			goto err_stop;
		}
	}

	if (sc->quirks & SONY_FF_SUPPORT) {
		ret = FUNC16(sc);
		if (ret < 0)
			goto err_close;
	}

	return 0;
err_close:
	FUNC7(hdev);
err_stop:
	/* Piggy back on the default ds4_bt_ poll_interval to determine
	 * if we need to remove the file as we don't know for sure if we
	 * executed that logic.
	 */
	if (sc->ds4_bt_poll_interval)
		FUNC2(&sc->hdev->dev, &dev_attr_bt_poll_interval);
	if (sc->fw_version)
		FUNC2(&sc->hdev->dev, &dev_attr_firmware_version);
	if (sc->hw_version)
		FUNC2(&sc->hdev->dev, &dev_attr_hardware_version);
	FUNC14(sc);
	FUNC22(sc);
	FUNC21(sc);
	return ret;
}