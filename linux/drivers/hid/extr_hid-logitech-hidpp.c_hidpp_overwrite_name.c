
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hidpp_device {int protocol_major; } ;
struct hid_device {int name; } ;


 int dbg_hid (char*,char*) ;
 int hid_err (struct hid_device*,char*) ;
 struct hidpp_device* hid_get_drvdata (struct hid_device*) ;
 char* hidpp_get_device_name (struct hidpp_device*) ;
 int kfree (char*) ;
 int snprintf (int ,int,char*,char*) ;

__attribute__((used)) static void hidpp_overwrite_name(struct hid_device *hdev)
{
 struct hidpp_device *hidpp = hid_get_drvdata(hdev);
 char *name;

 if (hidpp->protocol_major < 2)
  return;

 name = hidpp_get_device_name(hidpp);

 if (!name) {
  hid_err(hdev, "unable to retrieve the name of the device");
 } else {
  dbg_hid("HID++: Got name: %s\n", name);
  snprintf(hdev->name, sizeof(hdev->name), "%s", name);
 }

 kfree(name);
}
