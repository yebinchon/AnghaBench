
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adf_cfg_device_data {int debug; int lock; int sec_list; } ;
struct adf_accel_dev {int debugfs_dir; struct adf_cfg_device_data* cfg; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int S_IRUSR ;
 int debugfs_create_file (char*,int ,int ,struct adf_cfg_device_data*,int *) ;
 int init_rwsem (int *) ;
 struct adf_cfg_device_data* kzalloc (int,int ) ;
 int qat_dev_cfg_fops ;

int adf_cfg_dev_add(struct adf_accel_dev *accel_dev)
{
 struct adf_cfg_device_data *dev_cfg_data;

 dev_cfg_data = kzalloc(sizeof(*dev_cfg_data), GFP_KERNEL);
 if (!dev_cfg_data)
  return -ENOMEM;
 INIT_LIST_HEAD(&dev_cfg_data->sec_list);
 init_rwsem(&dev_cfg_data->lock);
 accel_dev->cfg = dev_cfg_data;


 dev_cfg_data->debug = debugfs_create_file("dev_cfg", S_IRUSR,
        accel_dev->debugfs_dir,
        dev_cfg_data,
        &qat_dev_cfg_fops);
 return 0;
}
