
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int attrib_id; int index; int size; int logical_maximum; int logical_minimum; int unit_expo; int units; int report_id; int usage_id; } ;
struct hid_sensor_custom_field {int hid_custom_attribute_group; TYPE_3__ attribute; int group_name; } ;
struct hid_sensor_custom {int sensor_field_count; int input_report_size; int input_field_count; TYPE_1__* hsdev; struct hid_sensor_custom_field* fields; } ;
struct hid_report {int id; } ;
struct hid_field {int logical; int report_size; int report_count; int logical_maximum; int logical_minimum; int unit_exponent; int unit; TYPE_2__* usage; } ;
struct attribute_group {int dummy; } ;
struct TYPE_5__ {int hid; } ;
struct TYPE_4__ {int usage; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int HID_FEATURE_REPORT ;
 int HID_INPUT_REPORT ;
 int kfree (struct hid_sensor_custom_field*) ;
 void* krealloc (struct hid_sensor_custom_field*,int,int ) ;
 int memset (int *,int ,int) ;
 int snprintf (int ,int,char*,int,int) ;

__attribute__((used)) static int hid_sensor_custom_add_field(struct hid_sensor_custom *sensor_inst,
           int index, int report_type,
           struct hid_report *report,
           struct hid_field *field)
{
 struct hid_sensor_custom_field *sensor_field;
 void *fields;

 fields = krealloc(sensor_inst->fields,
     (sensor_inst->sensor_field_count + 1) *
      sizeof(struct hid_sensor_custom_field), GFP_KERNEL);
 if (!fields) {
  kfree(sensor_inst->fields);
  return -ENOMEM;
 }
 sensor_inst->fields = fields;
 sensor_field = &sensor_inst->fields[sensor_inst->sensor_field_count];
 sensor_field->attribute.usage_id = sensor_inst->hsdev->usage;
 if (field->logical)
  sensor_field->attribute.attrib_id = field->logical;
 else
  sensor_field->attribute.attrib_id = field->usage[0].hid;

 sensor_field->attribute.index = index;
 sensor_field->attribute.report_id = report->id;
 sensor_field->attribute.units = field->unit;
 sensor_field->attribute.unit_expo = field->unit_exponent;
 sensor_field->attribute.size = (field->report_size / 8);
 sensor_field->attribute.logical_minimum = field->logical_minimum;
 sensor_field->attribute.logical_maximum = field->logical_maximum;

 if (report_type == HID_FEATURE_REPORT)
  snprintf(sensor_field->group_name,
    sizeof(sensor_field->group_name), "feature-%x-%x",
    sensor_field->attribute.index,
    sensor_field->attribute.attrib_id);
 else if (report_type == HID_INPUT_REPORT) {
  snprintf(sensor_field->group_name,
    sizeof(sensor_field->group_name),
    "input-%x-%x", sensor_field->attribute.index,
    sensor_field->attribute.attrib_id);
  sensor_inst->input_field_count++;
  sensor_inst->input_report_size += (field->report_size *
         field->report_count) / 8;
 }

 memset(&sensor_field->hid_custom_attribute_group, 0,
        sizeof(struct attribute_group));
 sensor_inst->sensor_field_count++;

 return 0;
}
