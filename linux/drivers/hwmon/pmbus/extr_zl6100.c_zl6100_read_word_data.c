
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zl6100_data {scalar_t__ id; int access; } ;
struct pmbus_driver_info {int dummy; } ;
struct i2c_client {int dummy; } ;


 int DIV_ROUND_CLOSEST (int,int) ;
 int ENXIO ;
 int MFR_READ_VMON ;
 int MFR_VMON_OV_FAULT_LIMIT ;
 int MFR_VMON_UV_FAULT_LIMIT ;

 int PMBUS_VIRT_BASE ;







 int ktime_get () ;
 struct pmbus_driver_info* pmbus_get_driver_info (struct i2c_client*) ;
 int pmbus_read_word_data (struct i2c_client*,int,int) ;
 struct zl6100_data* to_zl6100_data (struct pmbus_driver_info const*) ;
 scalar_t__ zl2005 ;
 int zl6100_d2l (int ) ;
 int zl6100_l2d (int) ;
 int zl6100_wait (struct zl6100_data*) ;

__attribute__((used)) static int zl6100_read_word_data(struct i2c_client *client, int page, int reg)
{
 const struct pmbus_driver_info *info = pmbus_get_driver_info(client);
 struct zl6100_data *data = to_zl6100_data(info);
 int ret, vreg;

 if (page > 0)
  return -ENXIO;

 if (data->id == zl2005) {




  switch (reg) {
  case 129:
  case 128:
  case 135:
   return -ENXIO;
  }
 }

 switch (reg) {
 case 134:
  vreg = MFR_READ_VMON;
  break;
 case 132:
 case 133:
  vreg = MFR_VMON_OV_FAULT_LIMIT;
  break;
 case 130:
 case 131:
  vreg = MFR_VMON_UV_FAULT_LIMIT;
  break;
 default:
  if (reg >= PMBUS_VIRT_BASE)
   return -ENXIO;
  vreg = reg;
  break;
 }

 zl6100_wait(data);
 ret = pmbus_read_word_data(client, page, vreg);
 data->access = ktime_get();
 if (ret < 0)
  return ret;

 switch (reg) {
 case 132:
  ret = zl6100_d2l(DIV_ROUND_CLOSEST(zl6100_l2d(ret) * 9, 10));
  break;
 case 130:
  ret = zl6100_d2l(DIV_ROUND_CLOSEST(zl6100_l2d(ret) * 11, 10));
  break;
 }

 return ret;
}
