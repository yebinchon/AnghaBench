
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct adf_accel_dev {int dummy; } ;


 int ADF_CFG_MAX_KEY_LEN_IN_BYTES ;
 int ADF_CFG_MAX_VAL_LEN_IN_BYTES ;
 int EFAULT ;
 scalar_t__ adf_cfg_get_param_value (struct adf_accel_dev*,char const*,char*,char*) ;
 scalar_t__ kstrtouint (char*,int,int *) ;
 int snprintf (char*,int,char const*,int ) ;

__attribute__((used)) static inline int adf_get_cfg_int(struct adf_accel_dev *accel_dev,
      const char *section, const char *format,
      uint32_t key, uint32_t *value)
{
 char key_buf[ADF_CFG_MAX_KEY_LEN_IN_BYTES];
 char val_buf[ADF_CFG_MAX_VAL_LEN_IN_BYTES];

 snprintf(key_buf, ADF_CFG_MAX_KEY_LEN_IN_BYTES, format, key);

 if (adf_cfg_get_param_value(accel_dev, section, key_buf, val_buf))
  return -EFAULT;

 if (kstrtouint(val_buf, 10, value))
  return -EFAULT;
 return 0;
}
