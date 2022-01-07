
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wacom_wac {struct input_dev* pen_input; struct input_dev* touch_input; struct input_dev* pad_input; } ;
struct wacom {struct wacom_wac wacom_wac; } ;
struct input_dev {int dummy; } ;


 int EINVAL ;
 int input_free_device (struct input_dev*) ;
 int input_register_device (struct input_dev*) ;
 int wacom_setup_pad_input_capabilities (struct input_dev*,struct wacom_wac*) ;
 int wacom_setup_pen_input_capabilities (struct input_dev*,struct wacom_wac*) ;
 int wacom_setup_touch_input_capabilities (struct input_dev*,struct wacom_wac*) ;

__attribute__((used)) static int wacom_register_inputs(struct wacom *wacom)
{
 struct input_dev *pen_input_dev, *touch_input_dev, *pad_input_dev;
 struct wacom_wac *wacom_wac = &(wacom->wacom_wac);
 int error = 0;

 pen_input_dev = wacom_wac->pen_input;
 touch_input_dev = wacom_wac->touch_input;
 pad_input_dev = wacom_wac->pad_input;

 if (!pen_input_dev || !touch_input_dev || !pad_input_dev)
  return -EINVAL;

 error = wacom_setup_pen_input_capabilities(pen_input_dev, wacom_wac);
 if (error) {

  input_free_device(pen_input_dev);
  wacom_wac->pen_input = ((void*)0);
  pen_input_dev = ((void*)0);
 } else {
  error = input_register_device(pen_input_dev);
  if (error)
   goto fail;
 }

 error = wacom_setup_touch_input_capabilities(touch_input_dev, wacom_wac);
 if (error) {

  input_free_device(touch_input_dev);
  wacom_wac->touch_input = ((void*)0);
  touch_input_dev = ((void*)0);
 } else {
  error = input_register_device(touch_input_dev);
  if (error)
   goto fail;
 }

 error = wacom_setup_pad_input_capabilities(pad_input_dev, wacom_wac);
 if (error) {

  input_free_device(pad_input_dev);
  wacom_wac->pad_input = ((void*)0);
  pad_input_dev = ((void*)0);
 } else {
  error = input_register_device(pad_input_dev);
  if (error)
   goto fail;
 }

 return 0;

fail:
 wacom_wac->pad_input = ((void*)0);
 wacom_wac->touch_input = ((void*)0);
 wacom_wac->pen_input = ((void*)0);
 return error;
}
