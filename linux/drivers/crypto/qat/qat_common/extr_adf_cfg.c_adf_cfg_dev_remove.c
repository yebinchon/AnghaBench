
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adf_cfg_device_data {int debug; int lock; int sec_list; } ;
struct adf_accel_dev {struct adf_cfg_device_data* cfg; } ;


 int adf_cfg_section_del_all (int *) ;
 int debugfs_remove (int ) ;
 int down_write (int *) ;
 int kfree (struct adf_cfg_device_data*) ;
 int up_write (int *) ;

void adf_cfg_dev_remove(struct adf_accel_dev *accel_dev)
{
 struct adf_cfg_device_data *dev_cfg_data = accel_dev->cfg;

 if (!dev_cfg_data)
  return;

 down_write(&dev_cfg_data->lock);
 adf_cfg_section_del_all(&dev_cfg_data->sec_list);
 up_write(&dev_cfg_data->lock);
 debugfs_remove(dev_cfg_data->debug);
 kfree(dev_cfg_data);
 accel_dev->cfg = ((void*)0);
}
