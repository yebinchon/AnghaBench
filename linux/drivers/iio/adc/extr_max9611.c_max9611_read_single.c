
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct max9611_dev {int lock; int dev; int i2c_client; } ;
typedef enum max9611_conf_ids { ____Placeholder_max9611_conf_ids } max9611_conf_ids ;


 int MAX9611_MUX_MASK ;
 int MAX9611_REG_CTRL1 ;
 int dev_err (int ,char*,int,...) ;
 int i2c_smbus_read_word_swapped (int ,int) ;
 int i2c_smbus_write_byte_data (int ,int ,int) ;
 int** max9611_mux_conf ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int max9611_read_single(struct max9611_dev *max9611,
          enum max9611_conf_ids selector,
          u16 *raw_val)
{
 int ret;

 u8 mux_conf = max9611_mux_conf[selector][0] & MAX9611_MUX_MASK;
 u8 reg_addr = max9611_mux_conf[selector][1];





 mutex_lock(&max9611->lock);
 ret = i2c_smbus_write_byte_data(max9611->i2c_client,
     MAX9611_REG_CTRL1, mux_conf);
 if (ret) {
  dev_err(max9611->dev, "i2c write byte failed: 0x%2x - 0x%2x\n",
   MAX9611_REG_CTRL1, mux_conf);
  mutex_unlock(&max9611->lock);
  return ret;
 }





 usleep_range(1000, 2000);

 ret = i2c_smbus_read_word_swapped(max9611->i2c_client, reg_addr);
 if (ret < 0) {
  dev_err(max9611->dev, "i2c read word from 0x%2x failed\n",
   reg_addr);
  mutex_unlock(&max9611->lock);
  return ret;
 }

 *raw_val = ret;
 mutex_unlock(&max9611->lock);

 return 0;
}
