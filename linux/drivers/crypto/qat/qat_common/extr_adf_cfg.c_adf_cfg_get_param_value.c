
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adf_cfg_device_data {int lock; } ;
struct adf_accel_dev {struct adf_cfg_device_data* cfg; } ;


 int adf_cfg_key_val_get (struct adf_accel_dev*,char const*,char const*,char*) ;
 int down_read (int *) ;
 int up_read (int *) ;

int adf_cfg_get_param_value(struct adf_accel_dev *accel_dev,
       const char *section, const char *name,
       char *value)
{
 struct adf_cfg_device_data *cfg = accel_dev->cfg;
 int ret;

 down_read(&cfg->lock);
 ret = adf_cfg_key_val_get(accel_dev, section, name, value);
 up_read(&cfg->lock);
 return ret;
}
