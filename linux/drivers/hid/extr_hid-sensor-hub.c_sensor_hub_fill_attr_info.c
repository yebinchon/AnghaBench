
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_sensor_hub_attribute_info {int size; int logical_maximum; int logical_minimum; int unit_expo; int units; void* report_id; void* index; } ;
struct hid_field {int report_size; int report_count; int logical_maximum; int logical_minimum; int unit_exponent; int unit; } ;
typedef void* s32 ;



__attribute__((used)) static void sensor_hub_fill_attr_info(
  struct hid_sensor_hub_attribute_info *info,
  s32 index, s32 report_id, struct hid_field *field)
{
 info->index = index;
 info->report_id = report_id;
 info->units = field->unit;
 info->unit_expo = field->unit_exponent;
 info->size = (field->report_size * field->report_count)/8;
 info->logical_minimum = field->logical_minimum;
 info->logical_maximum = field->logical_maximum;
}
