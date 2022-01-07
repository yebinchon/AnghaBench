
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_usage {int dummy; } ;
struct hid_field {int dummy; } ;
struct hid_device {int dummy; } ;
typedef scalar_t__ __s32 ;


 int abs (scalar_t__) ;

__attribute__((used)) static int speedlink_event(struct hid_device *hdev, struct hid_field *field,
  struct hid_usage *usage, __s32 value)
{







 if (abs(value) >= 256)
  return 1;

 if (value == 0)
  return 1;

 return 0;
}
