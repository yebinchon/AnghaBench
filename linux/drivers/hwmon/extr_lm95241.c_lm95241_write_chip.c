
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct lm95241_data {int config; int interval; int update_lock; int client; } ;
struct device {int dummy; } ;


 int CFG_CR0076 ;
 int CFG_CR0182 ;
 int CFG_CR1000 ;
 int CFG_CR2700 ;
 int CFG_CRMASK ;
 int EOPNOTSUPP ;
 int LM95241_REG_RW_CONFIG ;
 struct lm95241_data* dev_get_drvdata (struct device*) ;

 int i2c_smbus_write_byte_data (int ,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int lm95241_write_chip(struct device *dev, u32 attr, int channel,
         long val)
{
 struct lm95241_data *data = dev_get_drvdata(dev);
 int convrate;
 u8 config;
 int ret;

 mutex_lock(&data->update_lock);

 switch (attr) {
 case 128:
  config = data->config & ~CFG_CRMASK;
  if (val < 130) {
   convrate = 76;
   config |= CFG_CR0076;
  } else if (val < 590) {
   convrate = 182;
   config |= CFG_CR0182;
  } else if (val < 1850) {
   convrate = 1000;
   config |= CFG_CR1000;
  } else {
   convrate = 2700;
   config |= CFG_CR2700;
  }
  data->interval = convrate;
  data->config = config;
  ret = i2c_smbus_write_byte_data(data->client,
      LM95241_REG_RW_CONFIG, config);
  break;
 default:
  ret = -EOPNOTSUPP;
  break;
 }
 mutex_unlock(&data->update_lock);
 return ret;
}
