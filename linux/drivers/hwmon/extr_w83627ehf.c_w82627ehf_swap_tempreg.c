
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w83627ehf_data {int * reg_temp_config; int * reg_temp_hyst; int * reg_temp_over; int * reg_temp; int * temp_src; } ;


 int swap (int ,int ) ;

__attribute__((used)) static void w82627ehf_swap_tempreg(struct w83627ehf_data *data,
       int r1, int r2)
{
 swap(data->temp_src[r1], data->temp_src[r2]);
 swap(data->reg_temp[r1], data->reg_temp[r2]);
 swap(data->reg_temp_over[r1], data->reg_temp_over[r2]);
 swap(data->reg_temp_hyst[r1], data->reg_temp_hyst[r2]);
 swap(data->reg_temp_config[r1], data->reg_temp_config[r2]);
}
