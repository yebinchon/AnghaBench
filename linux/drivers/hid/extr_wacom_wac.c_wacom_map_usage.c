
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wacom_features {scalar_t__ offset_bottom; scalar_t__ offset_top; scalar_t__ offset_right; scalar_t__ offset_left; } ;
struct wacom_wac {struct wacom_features features; } ;
struct wacom {struct wacom_wac wacom_wac; } ;
struct input_dev {int evbit; } ;
struct hid_usage {int type; void* code; int hid; } ;
struct hid_field {int logical_minimum; int logical_maximum; } ;
typedef int __u8 ;
typedef void* __u16 ;


 int ABS_RZ ;




 unsigned int HID_DG_TWIST ;
 unsigned int HID_GD_X ;
 unsigned int HID_GD_Y ;
 int hidinput_calc_abs_res (struct hid_field*,int) ;
 int input_abs_set_res (struct input_dev*,void*,int ) ;
 struct wacom* input_get_drvdata (struct input_dev*) ;
 int input_set_abs_params (struct input_dev*,void*,int,int,int,int ) ;
 int input_set_capability (struct input_dev*,int const,void*) ;
 int set_bit (int,int ) ;
 unsigned int wacom_equivalent_usage (int ) ;

__attribute__((used)) static void wacom_map_usage(struct input_dev *input, struct hid_usage *usage,
  struct hid_field *field, __u8 type, __u16 code, int fuzz)
{
 struct wacom *wacom = input_get_drvdata(input);
 struct wacom_wac *wacom_wac = &wacom->wacom_wac;
 struct wacom_features *features = &wacom_wac->features;
 int fmin = field->logical_minimum;
 int fmax = field->logical_maximum;
 unsigned int equivalent_usage = wacom_equivalent_usage(usage->hid);
 int resolution_code = code;

 if (equivalent_usage == HID_DG_TWIST) {
  resolution_code = ABS_RZ;
 }

 if (equivalent_usage == HID_GD_X) {
  fmin += features->offset_left;
  fmax -= features->offset_right;
 }
 if (equivalent_usage == HID_GD_Y) {
  fmin += features->offset_top;
  fmax -= features->offset_bottom;
 }

 usage->type = type;
 usage->code = code;

 set_bit(type, input->evbit);

 switch (type) {
 case 131:
  input_set_abs_params(input, code, fmin, fmax, fuzz, 0);
  input_abs_set_res(input, code,
      hidinput_calc_abs_res(field, resolution_code));
  break;
 case 130:
  input_set_capability(input, 130, code);
  break;
 case 129:
  input_set_capability(input, 129, code);
  break;
 case 128:
  input_set_capability(input, 128, code);
  break;
 }
}
