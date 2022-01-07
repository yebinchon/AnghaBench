
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int ENODATA ;
 int LM25056_MFR_STS_VAUX_OV_WARN ;
 int LM25056_MFR_STS_VAUX_UV_WARN ;
 int PB_VOLTAGE_OV_WARNING ;
 int PB_VOLTAGE_UV_WARNING ;
 int PMBUS_STATUS_MFR_SPECIFIC ;

 int pmbus_read_byte_data (struct i2c_client*,int ,int ) ;

__attribute__((used)) static int lm25056_read_byte_data(struct i2c_client *client, int page, int reg)
{
 int ret, s;

 switch (reg) {
 case 128:
  ret = pmbus_read_byte_data(client, 0,
        PMBUS_STATUS_MFR_SPECIFIC);
  if (ret < 0)
   break;
  s = 0;
  if (ret & LM25056_MFR_STS_VAUX_UV_WARN)
   s |= PB_VOLTAGE_UV_WARNING;
  if (ret & LM25056_MFR_STS_VAUX_OV_WARN)
   s |= PB_VOLTAGE_OV_WARNING;
  ret = s;
  break;
 default:
  ret = -ENODATA;
  break;
 }
 return ret;
}
