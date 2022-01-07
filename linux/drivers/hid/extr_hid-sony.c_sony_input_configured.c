
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sony_sc {int quirks; int defer_initialization; int hotplug_worker_initialized; struct hid_device* hdev; scalar_t__ hw_version; scalar_t__ fw_version; scalar_t__ ds4_bt_poll_interval; int ds4_dongle_state; int hotplug_worker; } ;
struct hid_input {int dummy; } ;
struct hid_device {int dev; int quirks; } ;


 int DONGLE_DISCONNECTED ;
 scalar_t__ DS4_BT_DEFAULT_POLL_INTERVAL_MS ;
 int DUALSHOCK4_CONTROLLER ;
 int DUALSHOCK4_CONTROLLER_BT ;
 int DUALSHOCK4_DONGLE ;
 int HID_QUIRK_NO_OUTPUT_REPORTS_ON_INTR_EP ;
 int HID_QUIRK_SKIP_OUTPUT_REPORT_ID ;
 int INIT_WORK (int *,int ) ;
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
 int dev_attr_bt_poll_interval ;
 int dev_attr_firmware_version ;
 int dev_attr_hardware_version ;
 int device_create_file (int *,int *) ;
 int device_remove_file (int *,int *) ;
 int dualshock4_calibration_work ;
 int dualshock4_get_calibration_data (struct sony_sc*) ;
 int dualshock4_get_version_info (struct sony_sc*) ;
 int dualshock4_send_output_report ;
 int hid_err (struct hid_device*,char*,...) ;
 struct sony_sc* hid_get_drvdata (struct hid_device*) ;
 int hid_hw_close (struct hid_device*) ;
 int hid_hw_open (struct hid_device*) ;
 int hid_warn (struct hid_device*,char*,int) ;
 int motion_send_output_report ;
 int sixaxis_send_output_report ;
 int sixaxis_set_operational_bt (struct hid_device*) ;
 int sixaxis_set_operational_usb (struct hid_device*) ;
 int sony_allocate_output_report (struct sony_sc*) ;
 int sony_battery_probe (struct sony_sc*,int) ;
 int sony_cancel_work_sync (struct sony_sc*) ;
 int sony_check_add (struct sony_sc*) ;
 int sony_init_ff (struct sony_sc*) ;
 int sony_init_output_report (struct sony_sc*,int ) ;
 int sony_leds_init (struct sony_sc*) ;
 int sony_register_sensors (struct sony_sc*) ;
 int sony_register_touchpad (struct sony_sc*,int,int,int,int,int,int) ;
 int sony_release_device_id (struct sony_sc*) ;
 int sony_remove_dev_list (struct sony_sc*) ;
 int sony_set_device_id (struct sony_sc*) ;

__attribute__((used)) static int sony_input_configured(struct hid_device *hdev,
     struct hid_input *hidinput)
{
 struct sony_sc *sc = hid_get_drvdata(hdev);
 int append_dev_id;
 int ret;

 ret = sony_set_device_id(sc);
 if (ret < 0) {
  hid_err(hdev, "failed to allocate the device id\n");
  goto err_stop;
 }

 ret = append_dev_id = sony_check_add(sc);
 if (ret < 0)
  goto err_stop;

 ret = sony_allocate_output_report(sc);
 if (ret < 0) {
  hid_err(hdev, "failed to allocate the output report buffer\n");
  goto err_stop;
 }

 if (sc->quirks & NAVIGATION_CONTROLLER_USB) {
  hdev->quirks |= HID_QUIRK_NO_OUTPUT_REPORTS_ON_INTR_EP;
  hdev->quirks |= HID_QUIRK_SKIP_OUTPUT_REPORT_ID;
  sc->defer_initialization = 1;

  ret = sixaxis_set_operational_usb(hdev);
  if (ret < 0) {
   hid_err(hdev, "Failed to set controller into operational mode\n");
   goto err_stop;
  }

  sony_init_output_report(sc, sixaxis_send_output_report);
 } else if (sc->quirks & NAVIGATION_CONTROLLER_BT) {




  hdev->quirks |= HID_QUIRK_NO_OUTPUT_REPORTS_ON_INTR_EP;

  ret = sixaxis_set_operational_bt(hdev);
  if (ret < 0) {
   hid_err(hdev, "Failed to set controller into operational mode\n");
   goto err_stop;
  }

  sony_init_output_report(sc, sixaxis_send_output_report);
 } else if (sc->quirks & SIXAXIS_CONTROLLER_USB) {






  hdev->quirks |= HID_QUIRK_NO_OUTPUT_REPORTS_ON_INTR_EP;
  hdev->quirks |= HID_QUIRK_SKIP_OUTPUT_REPORT_ID;
  sc->defer_initialization = 1;

  ret = sixaxis_set_operational_usb(hdev);
  if (ret < 0) {
   hid_err(hdev, "Failed to set controller into operational mode\n");
   goto err_stop;
  }

  ret = sony_register_sensors(sc);
  if (ret) {
   hid_err(sc->hdev,
   "Unable to initialize motion sensors: %d\n", ret);
   goto err_stop;
  }

  sony_init_output_report(sc, sixaxis_send_output_report);
 } else if (sc->quirks & SIXAXIS_CONTROLLER_BT) {




  hdev->quirks |= HID_QUIRK_NO_OUTPUT_REPORTS_ON_INTR_EP;

  ret = sixaxis_set_operational_bt(hdev);
  if (ret < 0) {
   hid_err(hdev, "Failed to set controller into operational mode\n");
   goto err_stop;
  }

  ret = sony_register_sensors(sc);
  if (ret) {
   hid_err(sc->hdev,
   "Unable to initialize motion sensors: %d\n", ret);
   goto err_stop;
  }

  sony_init_output_report(sc, sixaxis_send_output_report);
 } else if (sc->quirks & DUALSHOCK4_CONTROLLER) {
  ret = dualshock4_get_calibration_data(sc);
  if (ret < 0) {
   hid_err(hdev, "Failed to get calibration data from Dualshock 4\n");
   goto err_stop;
  }

  ret = dualshock4_get_version_info(sc);
  if (ret < 0) {
   hid_err(sc->hdev, "Failed to get version data from Dualshock 4\n");
   goto err_stop;
  }

  ret = device_create_file(&sc->hdev->dev, &dev_attr_firmware_version);
  if (ret) {

   sc->fw_version = 0;
   sc->hw_version = 0;
   hid_err(sc->hdev, "can't create sysfs firmware_version attribute err: %d\n", ret);
   goto err_stop;
  }

  ret = device_create_file(&sc->hdev->dev, &dev_attr_hardware_version);
  if (ret) {
   sc->hw_version = 0;
   hid_err(sc->hdev, "can't create sysfs hardware_version attribute err: %d\n", ret);
   goto err_stop;
  }





  ret = sony_register_touchpad(sc, 2, 1920, 942, 0, 0, 0);
  if (ret) {
   hid_err(sc->hdev,
   "Unable to initialize multi-touch slots: %d\n",
   ret);
   goto err_stop;
  }

  ret = sony_register_sensors(sc);
  if (ret) {
   hid_err(sc->hdev,
   "Unable to initialize motion sensors: %d\n", ret);
   goto err_stop;
  }

  if (sc->quirks & DUALSHOCK4_CONTROLLER_BT) {
   sc->ds4_bt_poll_interval = DS4_BT_DEFAULT_POLL_INTERVAL_MS;
   ret = device_create_file(&sc->hdev->dev, &dev_attr_bt_poll_interval);
   if (ret)
    hid_warn(sc->hdev,
     "can't create sysfs bt_poll_interval attribute err: %d\n",
     ret);
  }

  if (sc->quirks & DUALSHOCK4_DONGLE) {
   INIT_WORK(&sc->hotplug_worker, dualshock4_calibration_work);
   sc->hotplug_worker_initialized = 1;
   sc->ds4_dongle_state = DONGLE_DISCONNECTED;
  }

  sony_init_output_report(sc, dualshock4_send_output_report);
 } else if (sc->quirks & NSG_MRXU_REMOTE) {




  ret = sony_register_touchpad(sc, 2,
   NSG_MRXU_MAX_X, NSG_MRXU_MAX_Y, 15, 15, 1);
  if (ret) {
   hid_err(sc->hdev,
   "Unable to initialize multi-touch slots: %d\n",
   ret);
   goto err_stop;
  }

 } else if (sc->quirks & MOTION_CONTROLLER) {
  sony_init_output_report(sc, motion_send_output_report);
 } else {
  ret = 0;
 }

 if (sc->quirks & SONY_LED_SUPPORT) {
  ret = sony_leds_init(sc);
  if (ret < 0)
   goto err_stop;
 }

 if (sc->quirks & SONY_BATTERY_SUPPORT) {
  ret = sony_battery_probe(sc, append_dev_id);
  if (ret < 0)
   goto err_stop;


  ret = hid_hw_open(hdev);
  if (ret < 0) {
   hid_err(hdev, "hw open failed\n");
   goto err_stop;
  }
 }

 if (sc->quirks & SONY_FF_SUPPORT) {
  ret = sony_init_ff(sc);
  if (ret < 0)
   goto err_close;
 }

 return 0;
err_close:
 hid_hw_close(hdev);
err_stop:




 if (sc->ds4_bt_poll_interval)
  device_remove_file(&sc->hdev->dev, &dev_attr_bt_poll_interval);
 if (sc->fw_version)
  device_remove_file(&sc->hdev->dev, &dev_attr_firmware_version);
 if (sc->hw_version)
  device_remove_file(&sc->hdev->dev, &dev_attr_hardware_version);
 sony_cancel_work_sync(sc);
 sony_remove_dev_list(sc);
 sony_release_device_id(sc);
 return ret;
}
