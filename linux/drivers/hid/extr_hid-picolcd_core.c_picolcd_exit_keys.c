
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct picolcd_data {struct input_dev* input_keys; } ;
struct input_dev {int dummy; } ;


 int input_unregister_device (struct input_dev*) ;

__attribute__((used)) static void picolcd_exit_keys(struct picolcd_data *data)
{
 struct input_dev *idev = data->input_keys;

 data->input_keys = ((void*)0);
 if (idev)
  input_unregister_device(idev);
}
