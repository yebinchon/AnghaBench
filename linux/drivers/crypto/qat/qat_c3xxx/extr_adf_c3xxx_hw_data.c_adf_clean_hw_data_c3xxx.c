
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct adf_hw_device_data {TYPE_1__* dev_class; } ;
struct TYPE_2__ {int instances; } ;



void adf_clean_hw_data_c3xxx(struct adf_hw_device_data *hw_data)
{
 hw_data->dev_class->instances--;
}
