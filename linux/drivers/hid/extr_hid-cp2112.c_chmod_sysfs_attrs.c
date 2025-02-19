
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int umode_t ;
typedef int u8 ;
struct TYPE_3__ {int kobj; } ;
struct hid_device {TYPE_1__ dev; } ;
struct attribute {int name; } ;
typedef int buf ;
struct TYPE_4__ {struct attribute** attrs; } ;


 int CP2112_LOCK_BYTE ;
 int HID_FEATURE_REPORT ;
 int S_IRUGO ;
 int S_IWUSR ;
 TYPE_2__ cp2112_attr_group ;
 int cp2112_hid_get (struct hid_device*,int ,int*,int,int ) ;
 int hid_err (struct hid_device*,char*,int) ;
 int sysfs_chmod_file (int *,struct attribute*,int) ;

__attribute__((used)) static void chmod_sysfs_attrs(struct hid_device *hdev)
{
 struct attribute **attr;
 u8 buf[2];
 int ret;

 ret = cp2112_hid_get(hdev, CP2112_LOCK_BYTE, buf, sizeof(buf),
        HID_FEATURE_REPORT);
 if (ret != sizeof(buf)) {
  hid_err(hdev, "error reading lock byte: %d\n", ret);
  return;
 }

 for (attr = cp2112_attr_group.attrs; *attr; ++attr) {
  umode_t mode = (buf[1] & 1) ? S_IWUSR | S_IRUGO : S_IRUGO;
  ret = sysfs_chmod_file(&hdev->dev.kobj, *attr, mode);
  if (ret < 0)
   hid_err(hdev, "error chmoding sysfs file %s\n",
    (*attr)->name);
  buf[1] >>= 1;
 }
}
