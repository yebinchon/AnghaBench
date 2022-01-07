
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxt_data {int * input_dev; } ;


 int input_unregister_device (int *) ;

__attribute__((used)) static void mxt_free_input_device(struct mxt_data *data)
{
 if (data->input_dev) {
  input_unregister_device(data->input_dev);
  data->input_dev = ((void*)0);
 }
}
