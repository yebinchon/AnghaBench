
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmbus_driver_info {int dummy; } ;
struct i2c_client {int dummy; } ;
struct adm1275_data {int have_mfr_vaux_status; int have_vaux_status; int have_vout; int have_oc_fault; int have_uc_fault; } ;


 int ADM1075_VAUX_OV_WARN ;
 int const ADM1075_VAUX_STATUS ;
 int ADM1075_VAUX_UV_WARN ;
 int ADM1275_MFR_STATUS_IOUT_WARN2 ;
 int ADM1293_MFR_STATUS_VAUX_OV_WARN ;
 int ADM1293_MFR_STATUS_VAUX_UV_WARN ;
 int ENODATA ;
 int ENXIO ;
 int PB_IOUT_OC_FAULT ;
 int PB_IOUT_UC_FAULT ;
 int PB_VOLTAGE_OV_WARNING ;
 int PB_VOLTAGE_UV_WARNING ;

 int const PMBUS_STATUS_MFR_SPECIFIC ;

 struct pmbus_driver_info* pmbus_get_driver_info (struct i2c_client*) ;
 int pmbus_read_byte_data (struct i2c_client*,int,int const) ;
 struct adm1275_data* to_adm1275_data (struct pmbus_driver_info const*) ;

__attribute__((used)) static int adm1275_read_byte_data(struct i2c_client *client, int page, int reg)
{
 const struct pmbus_driver_info *info = pmbus_get_driver_info(client);
 const struct adm1275_data *data = to_adm1275_data(info);
 int mfr_status, ret;

 if (page > 0)
  return -ENXIO;

 switch (reg) {
 case 129:
  ret = pmbus_read_byte_data(client, page, 129);
  if (ret < 0)
   break;
  if (!data->have_oc_fault && !data->have_uc_fault)
   break;
  mfr_status = pmbus_read_byte_data(client, page,
        PMBUS_STATUS_MFR_SPECIFIC);
  if (mfr_status < 0)
   return mfr_status;
  if (mfr_status & ADM1275_MFR_STATUS_IOUT_WARN2) {
   ret |= data->have_oc_fault ?
     PB_IOUT_OC_FAULT : PB_IOUT_UC_FAULT;
  }
  break;
 case 128:
  if (data->have_vout)
   return -ENODATA;
  ret = 0;
  if (data->have_vaux_status) {
   mfr_status = pmbus_read_byte_data(client, 0,
         ADM1075_VAUX_STATUS);
   if (mfr_status < 0)
    return mfr_status;
   if (mfr_status & ADM1075_VAUX_OV_WARN)
    ret |= PB_VOLTAGE_OV_WARNING;
   if (mfr_status & ADM1075_VAUX_UV_WARN)
    ret |= PB_VOLTAGE_UV_WARNING;
  } else if (data->have_mfr_vaux_status) {
   mfr_status = pmbus_read_byte_data(client, page,
      PMBUS_STATUS_MFR_SPECIFIC);
   if (mfr_status < 0)
    return mfr_status;
   if (mfr_status & ADM1293_MFR_STATUS_VAUX_OV_WARN)
    ret |= PB_VOLTAGE_OV_WARNING;
   if (mfr_status & ADM1293_MFR_STATUS_VAUX_UV_WARN)
    ret |= PB_VOLTAGE_UV_WARNING;
  }
  break;
 default:
  ret = -ENODATA;
  break;
 }
 return ret;
}
