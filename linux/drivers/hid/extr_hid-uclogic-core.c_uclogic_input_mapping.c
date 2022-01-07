
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uclogic_params {scalar_t__ pen_unused; } ;
struct uclogic_drvdata {struct uclogic_params params; } ;
struct hid_usage {int dummy; } ;
struct hid_input {int dummy; } ;
struct hid_field {scalar_t__ application; } ;
struct hid_device {int dummy; } ;


 scalar_t__ HID_DG_PEN ;
 struct uclogic_drvdata* hid_get_drvdata (struct hid_device*) ;

__attribute__((used)) static int uclogic_input_mapping(struct hid_device *hdev,
     struct hid_input *hi,
     struct hid_field *field,
     struct hid_usage *usage,
     unsigned long **bit,
     int *max)
{
 struct uclogic_drvdata *drvdata = hid_get_drvdata(hdev);
 struct uclogic_params *params = &drvdata->params;


 if (params->pen_unused && (field->application == HID_DG_PEN))
  return -1;


 return 0;
}
