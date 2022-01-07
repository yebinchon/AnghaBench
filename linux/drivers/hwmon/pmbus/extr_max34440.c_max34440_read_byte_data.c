
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int ENODATA ;
 int MAX34440_STATUS_OC_FAULT ;
 int MAX34440_STATUS_OC_WARN ;
 int MAX34440_STATUS_OT_FAULT ;
 int MAX34440_STATUS_OT_WARN ;
 int PB_IOUT_OC_FAULT ;
 int PB_IOUT_OC_WARNING ;
 int PB_TEMP_OT_FAULT ;
 int PB_TEMP_OT_WARNING ;

 int PMBUS_STATUS_MFR_SPECIFIC ;

 int pmbus_read_word_data (struct i2c_client*,int ,int ) ;
 int pmbus_set_page (struct i2c_client*,int) ;

__attribute__((used)) static int max34440_read_byte_data(struct i2c_client *client, int page, int reg)
{
 int ret = 0;
 int mfg_status;

 if (page >= 0) {
  ret = pmbus_set_page(client, page);
  if (ret < 0)
   return ret;
 }

 switch (reg) {
 case 129:
  mfg_status = pmbus_read_word_data(client, 0,
        PMBUS_STATUS_MFR_SPECIFIC);
  if (mfg_status < 0)
   return mfg_status;
  if (mfg_status & MAX34440_STATUS_OC_WARN)
   ret |= PB_IOUT_OC_WARNING;
  if (mfg_status & MAX34440_STATUS_OC_FAULT)
   ret |= PB_IOUT_OC_FAULT;
  break;
 case 128:
  mfg_status = pmbus_read_word_data(client, 0,
        PMBUS_STATUS_MFR_SPECIFIC);
  if (mfg_status < 0)
   return mfg_status;
  if (mfg_status & MAX34440_STATUS_OT_WARN)
   ret |= PB_TEMP_OT_WARNING;
  if (mfg_status & MAX34440_STATUS_OT_FAULT)
   ret |= PB_TEMP_OT_FAULT;
  break;
 default:
  ret = -ENODATA;
  break;
 }
 return ret;
}
