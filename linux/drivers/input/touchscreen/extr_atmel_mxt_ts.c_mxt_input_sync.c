
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxt_data {int input_dev; int t19_num_keys; } ;


 int input_mt_report_pointer_emulation (int ,int ) ;
 int input_sync (int ) ;

__attribute__((used)) static void mxt_input_sync(struct mxt_data *data)
{
 input_mt_report_pointer_emulation(data->input_dev,
       data->t19_num_keys);
 input_sync(data->input_dev);
}
