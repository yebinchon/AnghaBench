
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wacom_features {scalar_t__ oVid; scalar_t__ oPid; scalar_t__ type; int device_type; } ;
struct TYPE_2__ {struct wacom_features features; } ;
struct wacom {TYPE_1__ wacom_wac; } ;
struct hid_device {scalar_t__ vendor; scalar_t__ product; } ;
typedef scalar_t__ __u32 ;


 scalar_t__ HID_ANY_ID ;
 scalar_t__ HID_GENERIC ;
 int WACOM_DEVICETYPE_DIRECT ;
 int WACOM_DEVICETYPE_PEN ;
 int WACOM_DEVICETYPE_TOUCH ;
 int hid_compare_device_paths (struct hid_device*,struct hid_device*,char) ;
 struct wacom* hid_get_drvdata (struct hid_device*) ;

__attribute__((used)) static bool wacom_are_sibling(struct hid_device *hdev,
  struct hid_device *sibling)
{
 struct wacom *wacom = hid_get_drvdata(hdev);
 struct wacom_features *features = &wacom->wacom_wac.features;
 struct wacom *sibling_wacom = hid_get_drvdata(sibling);
 struct wacom_features *sibling_features = &sibling_wacom->wacom_wac.features;
 __u32 oVid = features->oVid ? features->oVid : hdev->vendor;
 __u32 oPid = features->oPid ? features->oPid : hdev->product;


 if (features->oVid != HID_ANY_ID && sibling->vendor != oVid)
  return 0;
 if (features->oPid != HID_ANY_ID && sibling->product != oPid)
  return 0;






 if (hdev->vendor == sibling->vendor && hdev->product == sibling->product) {
  if (!hid_compare_device_paths(hdev, sibling, '/'))
   return 0;
 } else {
  if (!hid_compare_device_paths(hdev, sibling, '.'))
   return 0;
 }


 if (features->type != HID_GENERIC)
  return 1;





 if ((features->device_type & WACOM_DEVICETYPE_DIRECT) &&
     !(sibling_features->device_type & WACOM_DEVICETYPE_DIRECT))
  return 0;





 if (!(features->device_type & WACOM_DEVICETYPE_DIRECT) &&
     (sibling_features->device_type & WACOM_DEVICETYPE_DIRECT))
  return 0;


 if ((features->device_type & WACOM_DEVICETYPE_PEN) &&
     !(sibling_features->device_type & WACOM_DEVICETYPE_TOUCH))
  return 0;


 if ((features->device_type & WACOM_DEVICETYPE_TOUCH) &&
     !(sibling_features->device_type & WACOM_DEVICETYPE_PEN))
  return 0;





 return 1;
}
