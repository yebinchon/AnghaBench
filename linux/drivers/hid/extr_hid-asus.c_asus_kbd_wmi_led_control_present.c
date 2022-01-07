
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hid_device {int dummy; } ;


 int ASUS_WMI_DEVID_KBD_BACKLIGHT ;
 int ASUS_WMI_DSTS_PRESENCE_BIT ;
 int ASUS_WMI_METHODID_DSTS ;
 int CONFIG_ASUS_WMI ;
 int IS_ENABLED (int ) ;
 int asus_wmi_evaluate_method (int ,int ,int ,int*) ;
 int hid_dbg (struct hid_device*,char*,int,int) ;

__attribute__((used)) static bool asus_kbd_wmi_led_control_present(struct hid_device *hdev)
{
 u32 value;
 int ret;

 if (!IS_ENABLED(CONFIG_ASUS_WMI))
  return 0;

 ret = asus_wmi_evaluate_method(ASUS_WMI_METHODID_DSTS,
           ASUS_WMI_DEVID_KBD_BACKLIGHT, 0, &value);
 hid_dbg(hdev, "WMI backlight check: rc %d value %x", ret, value);
 if (ret)
  return 0;

 return !!(value & ASUS_WMI_DSTS_PRESENCE_BIT);
}
