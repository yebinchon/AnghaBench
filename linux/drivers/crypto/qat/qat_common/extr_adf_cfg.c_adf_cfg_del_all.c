
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adf_cfg_device_data {int lock; int sec_list; } ;
struct adf_accel_dev {int status; struct adf_cfg_device_data* cfg; } ;


 int ADF_STATUS_CONFIGURED ;
 int adf_cfg_section_del_all (int *) ;
 int clear_bit (int ,int *) ;
 int down_write (int *) ;
 int up_write (int *) ;

void adf_cfg_del_all(struct adf_accel_dev *accel_dev)
{
 struct adf_cfg_device_data *dev_cfg_data = accel_dev->cfg;

 down_write(&dev_cfg_data->lock);
 adf_cfg_section_del_all(&dev_cfg_data->sec_list);
 up_write(&dev_cfg_data->lock);
 clear_bit(ADF_STATUS_CONFIGURED, &accel_dev->status);
}
