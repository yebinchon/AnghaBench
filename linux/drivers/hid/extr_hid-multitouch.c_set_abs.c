
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct hid_field {int logical_minimum; int logical_maximum; } ;


 int hidinput_calc_abs_res (struct hid_field*,unsigned int) ;
 int input_abs_set_res (struct input_dev*,unsigned int,int ) ;
 int input_set_abs_params (struct input_dev*,unsigned int,int,int,int,int ) ;

__attribute__((used)) static void set_abs(struct input_dev *input, unsigned int code,
  struct hid_field *field, int snratio)
{
 int fmin = field->logical_minimum;
 int fmax = field->logical_maximum;
 int fuzz = snratio ? (fmax - fmin) / snratio : 0;
 input_set_abs_params(input, code, fmin, fmax, fuzz, 0);
 input_abs_set_res(input, code, hidinput_calc_abs_res(field, code));
}
