
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int CFFPS_MFR_PS_KILL ;
 int ENODATA ;
 int PB_STATUS_OFF ;
 int PMBUS_STATUS_MFR_SPECIFIC ;

 int pmbus_read_byte_data (struct i2c_client*,int,int ) ;
 int pmbus_read_word_data (struct i2c_client*,int,int) ;

__attribute__((used)) static int ibm_cffps_read_word_data(struct i2c_client *client, int page,
        int reg)
{
 int rc, mfr;

 switch (reg) {
 case 128:
  rc = pmbus_read_word_data(client, page, reg);
  if (rc < 0)
   return rc;

  mfr = pmbus_read_byte_data(client, page,
        PMBUS_STATUS_MFR_SPECIFIC);
  if (mfr < 0)




   return rc;

  if (mfr & CFFPS_MFR_PS_KILL)
   rc |= PB_STATUS_OFF;
  break;
 default:
  rc = -ENODATA;
  break;
 }

 return rc;
}
