
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device_id {int dummy; } ;
struct hid_device {int dummy; } ;


 int HID_CONNECT_DEFAULT ;
 int hid_err (struct hid_device*,char*) ;
 int hid_hw_start (struct hid_device*,int ) ;
 int hid_hw_stop (struct hid_device*) ;
 int hid_parse (struct hid_device*) ;
 int kone_init_specials (struct hid_device*) ;

__attribute__((used)) static int kone_probe(struct hid_device *hdev, const struct hid_device_id *id)
{
 int retval;

 retval = hid_parse(hdev);
 if (retval) {
  hid_err(hdev, "parse failed\n");
  goto exit;
 }

 retval = hid_hw_start(hdev, HID_CONNECT_DEFAULT);
 if (retval) {
  hid_err(hdev, "hw start failed\n");
  goto exit;
 }

 retval = kone_init_specials(hdev);
 if (retval) {
  hid_err(hdev, "couldn't install mouse\n");
  goto exit_stop;
 }

 return 0;

exit_stop:
 hid_hw_stop(hdev);
exit:
 return retval;
}
