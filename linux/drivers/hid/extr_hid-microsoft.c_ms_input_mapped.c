
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ms_data {unsigned long quirks; } ;
struct hid_usage {int code; } ;
struct hid_input {int dummy; } ;
struct hid_field {int dummy; } ;
struct hid_device {int dummy; } ;


 unsigned long MS_DUPLICATE_USAGES ;
 int clear_bit (int ,unsigned long*) ;
 struct ms_data* hid_get_drvdata (struct hid_device*) ;

__attribute__((used)) static int ms_input_mapped(struct hid_device *hdev, struct hid_input *hi,
  struct hid_field *field, struct hid_usage *usage,
  unsigned long **bit, int *max)
{
 struct ms_data *ms = hid_get_drvdata(hdev);
 unsigned long quirks = ms->quirks;

 if (quirks & MS_DUPLICATE_USAGES)
  clear_bit(usage->code, *bit);

 return 0;
}
