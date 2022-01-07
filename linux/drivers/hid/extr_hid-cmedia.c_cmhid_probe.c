
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device_id {int dummy; } ;
struct hid_device {int quirks; } ;
struct cmhid {struct hid_device* hid; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int HID_CONNECT_DEFAULT ;
 int HID_CONNECT_HIDDEV_FORCE ;
 int HID_QUIRK_HIDINPUT_FORCE ;
 int hid_err (struct hid_device*,char*) ;
 int hid_hw_start (struct hid_device*,int) ;
 int hid_parse (struct hid_device*) ;
 int hid_set_drvdata (struct hid_device*,struct cmhid*) ;
 int kfree (struct cmhid*) ;
 struct cmhid* kzalloc (int,int ) ;

__attribute__((used)) static int cmhid_probe(struct hid_device *hid, const struct hid_device_id *id)
{
 int ret;
 struct cmhid *cm;

 cm = kzalloc(sizeof(struct cmhid), GFP_KERNEL);
 if (!cm) {
  ret = -ENOMEM;
  goto allocfail;
 }

 cm->hid = hid;

 hid->quirks |= HID_QUIRK_HIDINPUT_FORCE;
 hid_set_drvdata(hid, cm);

 ret = hid_parse(hid);
 if (ret) {
  hid_err(hid, "parse failed\n");
  goto fail;
 }

 ret = hid_hw_start(hid, HID_CONNECT_DEFAULT | HID_CONNECT_HIDDEV_FORCE);
 if (ret) {
  hid_err(hid, "hw start failed\n");
  goto fail;
 }

 return 0;
fail:
 kfree(cm);
allocfail:
 return ret;
}
