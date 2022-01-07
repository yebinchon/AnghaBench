
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct zl6100_data {int access; } ;
struct pmbus_driver_info {int dummy; } ;
struct i2c_client {int dummy; } ;


 int DIV_ROUND_CLOSEST (int,int) ;
 int ENXIO ;
 int MFR_VMON_OV_FAULT_LIMIT ;
 int MFR_VMON_UV_FAULT_LIMIT ;
 int PMBUS_VIRT_BASE ;




 int ktime_get () ;
 int pmbus_clear_cache (struct i2c_client*) ;
 struct pmbus_driver_info* pmbus_get_driver_info (struct i2c_client*) ;
 int pmbus_write_word_data (struct i2c_client*,int,int,int ) ;
 struct zl6100_data* to_zl6100_data (struct pmbus_driver_info const*) ;
 int zl6100_d2l (int ) ;
 int zl6100_l2d (int ) ;
 int zl6100_wait (struct zl6100_data*) ;

__attribute__((used)) static int zl6100_write_word_data(struct i2c_client *client, int page, int reg,
      u16 word)
{
 const struct pmbus_driver_info *info = pmbus_get_driver_info(client);
 struct zl6100_data *data = to_zl6100_data(info);
 int ret, vreg;

 if (page > 0)
  return -ENXIO;

 switch (reg) {
 case 130:
  word = zl6100_d2l(DIV_ROUND_CLOSEST(zl6100_l2d(word) * 10, 9));
  vreg = MFR_VMON_OV_FAULT_LIMIT;
  pmbus_clear_cache(client);
  break;
 case 131:
  vreg = MFR_VMON_OV_FAULT_LIMIT;
  pmbus_clear_cache(client);
  break;
 case 128:
  word = zl6100_d2l(DIV_ROUND_CLOSEST(zl6100_l2d(word) * 10, 11));
  vreg = MFR_VMON_UV_FAULT_LIMIT;
  pmbus_clear_cache(client);
  break;
 case 129:
  vreg = MFR_VMON_UV_FAULT_LIMIT;
  pmbus_clear_cache(client);
  break;
 default:
  if (reg >= PMBUS_VIRT_BASE)
   return -ENXIO;
  vreg = reg;
 }

 zl6100_wait(data);
 ret = pmbus_write_word_data(client, page, vreg, word);
 data->access = ktime_get();

 return ret;
}
