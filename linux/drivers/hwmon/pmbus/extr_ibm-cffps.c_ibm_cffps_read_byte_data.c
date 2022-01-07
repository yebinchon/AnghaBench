
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int CFFPS_MFR_CURRENT_SHARE_WARNING ;
 int CFFPS_MFR_FAN_FAULT ;
 int CFFPS_MFR_OC_FAULT ;
 int CFFPS_MFR_OV_FAULT ;
 int CFFPS_MFR_THERMAL_FAULT ;
 int CFFPS_MFR_UV_FAULT ;
 int CFFPS_MFR_VAUX_FAULT ;
 int ENODATA ;
 int PB_CURRENT_SHARE_FAULT ;
 int PB_FAN_FAN1_FAULT ;
 int PB_IOUT_OC_FAULT ;
 int PB_TEMP_OT_FAULT ;
 int PB_VOLTAGE_OV_FAULT ;
 int PB_VOLTAGE_UV_FAULT ;


 int PMBUS_STATUS_MFR_SPECIFIC ;


 int pmbus_read_byte_data (struct i2c_client*,int,int) ;

__attribute__((used)) static int ibm_cffps_read_byte_data(struct i2c_client *client, int page,
        int reg)
{
 int rc, mfr;

 switch (reg) {
 case 128:
 case 130:
 case 129:
 case 131:
  rc = pmbus_read_byte_data(client, page, reg);
  if (rc < 0)
   return rc;

  mfr = pmbus_read_byte_data(client, page,
        PMBUS_STATUS_MFR_SPECIFIC);
  if (mfr < 0)




   return rc;


  if (reg == 131) {
   if (mfr & CFFPS_MFR_FAN_FAULT)
    rc |= PB_FAN_FAN1_FAULT;
  } else if (reg == 129) {
   if (mfr & CFFPS_MFR_THERMAL_FAULT)
    rc |= PB_TEMP_OT_FAULT;
  } else if (reg == 128) {
   if (mfr & (CFFPS_MFR_OV_FAULT | CFFPS_MFR_VAUX_FAULT))
    rc |= PB_VOLTAGE_OV_FAULT;
   if (mfr & CFFPS_MFR_UV_FAULT)
    rc |= PB_VOLTAGE_UV_FAULT;
  } else if (reg == 130) {
   if (mfr & CFFPS_MFR_OC_FAULT)
    rc |= PB_IOUT_OC_FAULT;
   if (mfr & CFFPS_MFR_CURRENT_SHARE_WARNING)
    rc |= PB_CURRENT_SHARE_FAULT;
  }
  break;
 default:
  rc = -ENODATA;
  break;
 }

 return rc;
}
