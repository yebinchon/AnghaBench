
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_usage {int dummy; } ;
struct hid_input {int dummy; } ;
struct hid_field {int dummy; } ;
struct hid_device {int product; } ;
 int lenovo_input_mapping_cptkbd (struct hid_device*,struct hid_input*,struct hid_field*,struct hid_usage*,unsigned long**,int*) ;
 int lenovo_input_mapping_scrollpoint (struct hid_device*,struct hid_input*,struct hid_field*,struct hid_usage*,unsigned long**,int*) ;
 int lenovo_input_mapping_tpkbd (struct hid_device*,struct hid_input*,struct hid_field*,struct hid_usage*,unsigned long**,int*) ;

__attribute__((used)) static int lenovo_input_mapping(struct hid_device *hdev,
  struct hid_input *hi, struct hid_field *field,
  struct hid_usage *usage, unsigned long **bit, int *max)
{
 switch (hdev->product) {
 case 128:
  return lenovo_input_mapping_tpkbd(hdev, hi, field,
       usage, bit, max);
 case 130:
 case 131:
  return lenovo_input_mapping_cptkbd(hdev, hi, field,
       usage, bit, max);
 case 134:
 case 132:
 case 133:
 case 136:
 case 135:
 case 129:
  return lenovo_input_mapping_scrollpoint(hdev, hi, field,
       usage, bit, max);
 default:
  return 0;
 }
}
