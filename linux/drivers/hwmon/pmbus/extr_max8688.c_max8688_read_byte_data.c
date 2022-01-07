
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int ENODATA ;
 int ENXIO ;
 int MAX8688_MFG_STATUS ;
 int MAX8688_STATUS_OC_FAULT ;
 int MAX8688_STATUS_OC_WARNING ;
 int MAX8688_STATUS_OT_FAULT ;
 int MAX8688_STATUS_OT_WARNING ;
 int MAX8688_STATUS_OV_FAULT ;
 int MAX8688_STATUS_OV_WARNING ;
 int MAX8688_STATUS_UC_FAULT ;
 int MAX8688_STATUS_UV_FAULT ;
 int MAX8688_STATUS_UV_WARNING ;
 int PB_IOUT_OC_FAULT ;
 int PB_IOUT_OC_WARNING ;
 int PB_IOUT_UC_FAULT ;
 int PB_TEMP_OT_FAULT ;
 int PB_TEMP_OT_WARNING ;
 int PB_VOLTAGE_OV_FAULT ;
 int PB_VOLTAGE_OV_WARNING ;
 int PB_VOLTAGE_UV_FAULT ;
 int PB_VOLTAGE_UV_WARNING ;



 int pmbus_read_word_data (struct i2c_client*,int ,int ) ;

__attribute__((used)) static int max8688_read_byte_data(struct i2c_client *client, int page, int reg)
{
 int ret = 0;
 int mfg_status;

 if (page > 0)
  return -ENXIO;

 switch (reg) {
 case 128:
  mfg_status = pmbus_read_word_data(client, 0,
        MAX8688_MFG_STATUS);
  if (mfg_status < 0)
   return mfg_status;
  if (mfg_status & MAX8688_STATUS_UV_WARNING)
   ret |= PB_VOLTAGE_UV_WARNING;
  if (mfg_status & MAX8688_STATUS_UV_FAULT)
   ret |= PB_VOLTAGE_UV_FAULT;
  if (mfg_status & MAX8688_STATUS_OV_WARNING)
   ret |= PB_VOLTAGE_OV_WARNING;
  if (mfg_status & MAX8688_STATUS_OV_FAULT)
   ret |= PB_VOLTAGE_OV_FAULT;
  break;
 case 130:
  mfg_status = pmbus_read_word_data(client, 0,
        MAX8688_MFG_STATUS);
  if (mfg_status < 0)
   return mfg_status;
  if (mfg_status & MAX8688_STATUS_UC_FAULT)
   ret |= PB_IOUT_UC_FAULT;
  if (mfg_status & MAX8688_STATUS_OC_WARNING)
   ret |= PB_IOUT_OC_WARNING;
  if (mfg_status & MAX8688_STATUS_OC_FAULT)
   ret |= PB_IOUT_OC_FAULT;
  break;
 case 129:
  mfg_status = pmbus_read_word_data(client, 0,
        MAX8688_MFG_STATUS);
  if (mfg_status < 0)
   return mfg_status;
  if (mfg_status & MAX8688_STATUS_OT_WARNING)
   ret |= PB_TEMP_OT_WARNING;
  if (mfg_status & MAX8688_STATUS_OT_FAULT)
   ret |= PB_TEMP_OT_FAULT;
  break;
 default:
  ret = -ENODATA;
  break;
 }
 return ret;
}
