
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union i2c_smbus_data {int byte; } ;
typedef int u8 ;
typedef int u16 ;
struct i2c_adapter {int dummy; } ;
struct cht_wc_i2c_adap {int io_error; int done; int adap_lock; int read_data; int wait; int regmap; } ;


 int CHT_WC_I2C_CLIENT_ADDR ;
 int CHT_WC_I2C_CTRL ;
 int CHT_WC_I2C_CTRL_RD ;
 int CHT_WC_I2C_CTRL_WR ;
 int CHT_WC_I2C_REG_OFFSET ;
 int CHT_WC_I2C_WRDATA ;
 int EIO ;
 int ETIMEDOUT ;
 char I2C_SMBUS_READ ;
 char I2C_SMBUS_WRITE ;
 int cht_wc_i2c_adap_thread_handler (int ,struct cht_wc_i2c_adap*) ;
 struct cht_wc_i2c_adap* i2c_get_adapdata (struct i2c_adapter*) ;
 int msecs_to_jiffies (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_write (int ,int ,int ) ;
 int wait_event_timeout (int ,int,int ) ;

__attribute__((used)) static int cht_wc_i2c_adap_smbus_xfer(struct i2c_adapter *_adap, u16 addr,
          unsigned short flags, char read_write,
          u8 command, int size,
          union i2c_smbus_data *data)
{
 struct cht_wc_i2c_adap *adap = i2c_get_adapdata(_adap);
 int ret;

 mutex_lock(&adap->adap_lock);
 adap->io_error = 0;
 adap->done = 0;
 mutex_unlock(&adap->adap_lock);

 ret = regmap_write(adap->regmap, CHT_WC_I2C_CLIENT_ADDR, addr);
 if (ret)
  return ret;

 if (read_write == I2C_SMBUS_WRITE) {
  ret = regmap_write(adap->regmap, CHT_WC_I2C_WRDATA, data->byte);
  if (ret)
   return ret;
 }

 ret = regmap_write(adap->regmap, CHT_WC_I2C_REG_OFFSET, command);
 if (ret)
  return ret;

 ret = regmap_write(adap->regmap, CHT_WC_I2C_CTRL,
      (read_write == I2C_SMBUS_WRITE) ?
      CHT_WC_I2C_CTRL_WR : CHT_WC_I2C_CTRL_RD);
 if (ret)
  return ret;

 ret = wait_event_timeout(adap->wait, adap->done, msecs_to_jiffies(30));
 if (ret == 0) {




  cht_wc_i2c_adap_thread_handler(0, adap);
  if (!adap->done)
   return -ETIMEDOUT;
 }

 ret = 0;
 mutex_lock(&adap->adap_lock);
 if (adap->io_error)
  ret = -EIO;
 else if (read_write == I2C_SMBUS_READ)
  data->byte = adap->read_data;
 mutex_unlock(&adap->adap_lock);

 return ret;
}
