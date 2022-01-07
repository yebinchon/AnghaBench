
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adf_cfg_section {int dummy; } ;
struct adf_cfg_key_val {int val; } ;
struct adf_accel_dev {int dummy; } ;


 int ADF_CFG_MAX_VAL_LEN_IN_BYTES ;
 struct adf_cfg_key_val* adf_cfg_key_value_find (struct adf_cfg_section*,char const*) ;
 struct adf_cfg_section* adf_cfg_sec_find (struct adf_accel_dev*,char const*) ;
 int memcpy (char*,int ,int ) ;

__attribute__((used)) static int adf_cfg_key_val_get(struct adf_accel_dev *accel_dev,
          const char *sec_name,
          const char *key_name,
          char *val)
{
 struct adf_cfg_section *sec = adf_cfg_sec_find(accel_dev, sec_name);
 struct adf_cfg_key_val *keyval = ((void*)0);

 if (sec)
  keyval = adf_cfg_key_value_find(sec, key_name);
 if (keyval) {
  memcpy(val, keyval->val, ADF_CFG_MAX_VAL_LEN_IN_BYTES);
  return 0;
 }
 return -1;
}
