
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_usage {scalar_t__ hid; } ;
struct hid_input {int dummy; } ;
struct hid_field {int dummy; } ;
struct hid_device {scalar_t__ product; } ;


 scalar_t__ USB_DEVICE_ID_GOOGLE_WHISKERS ;
 scalar_t__ WHISKERS_KBD_FOLDED ;

__attribute__((used)) static int hammer_input_mapping(struct hid_device *hdev, struct hid_input *hi,
    struct hid_field *field,
    struct hid_usage *usage,
    unsigned long **bit, int *max)
{
 if (hdev->product == USB_DEVICE_ID_GOOGLE_WHISKERS &&
     usage->hid == WHISKERS_KBD_FOLDED) {





  return -1;
 }

 return 0;
}
