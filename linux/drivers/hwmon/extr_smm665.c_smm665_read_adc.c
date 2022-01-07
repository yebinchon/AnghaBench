
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smm665_data {int conversion_time; struct i2c_client* cmdreg; } ;
struct i2c_client {int dev; } ;


 int EIO ;
 int ENXIO ;
 int SMM665_ADC_MASK ;
 int dev_dbg (int *,char*,int,...) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int) ;
 int i2c_smbus_read_word_swapped (struct i2c_client*,int ) ;
 int udelay (int ) ;

__attribute__((used)) static int smm665_read_adc(struct smm665_data *data, int adc)
{
 struct i2c_client *client = data->cmdreg;
 int rv;
 int radc;
 rv = i2c_smbus_read_byte_data(client, adc << 3);
 if (rv != -ENXIO) {





  dev_dbg(&client->dev,
   "Unexpected return code %d when setting ADC index", rv);
  return (rv < 0) ? rv : -EIO;
 }

 udelay(data->conversion_time);
 rv = i2c_smbus_read_word_swapped(client, 0);
 if (rv < 0) {
  dev_dbg(&client->dev, "Failed to read ADC value: error %d", rv);
  return rv;
 }



 radc = (rv >> 11) & 0x0f;
 if (radc != adc) {
  dev_dbg(&client->dev, "Unexpected RADC: Expected %d got %d",
   adc, radc);
  return -EIO;
 }

 return rv & SMM665_ADC_MASK;
}
