
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct adf_hw_device_data {int num_banks; } ;
struct adf_etr_data {TYPE_1__* banks; } ;
struct adf_accel_dev {struct adf_hw_device_data* hw_device; struct adf_etr_data* transport; } ;
struct TYPE_2__ {int resp_handler; } ;


 int adf_response_handler ;
 int tasklet_init (int *,int ,unsigned long) ;

__attribute__((used)) static int adf_setup_bh(struct adf_accel_dev *accel_dev)
{
 struct adf_etr_data *priv_data = accel_dev->transport;
 struct adf_hw_device_data *hw_data = accel_dev->hw_device;
 int i;

 for (i = 0; i < hw_data->num_banks; i++)
  tasklet_init(&priv_data->banks[i].resp_handler,
        adf_response_handler,
        (unsigned long)&priv_data->banks[i]);
 return 0;
}
