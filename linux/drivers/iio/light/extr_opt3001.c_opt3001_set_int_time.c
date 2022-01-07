
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct opt3001 {int int_time; int client; int dev; } ;


 int EINVAL ;
 int OPT3001_CONFIGURATION ;
 int OPT3001_CONFIGURATION_CT ;


 int dev_err (int ,char*,int ) ;
 int i2c_smbus_read_word_swapped (int ,int ) ;
 int i2c_smbus_write_word_swapped (int ,int ,int) ;

__attribute__((used)) static int opt3001_set_int_time(struct opt3001 *opt, int time)
{
 int ret;
 u16 reg;

 ret = i2c_smbus_read_word_swapped(opt->client, OPT3001_CONFIGURATION);
 if (ret < 0) {
  dev_err(opt->dev, "failed to read register %02x\n",
    OPT3001_CONFIGURATION);
  return ret;
 }

 reg = ret;

 switch (time) {
 case 128:
  reg &= ~OPT3001_CONFIGURATION_CT;
  opt->int_time = 128;
  break;
 case 129:
  reg |= OPT3001_CONFIGURATION_CT;
  opt->int_time = 129;
  break;
 default:
  return -EINVAL;
 }

 return i2c_smbus_write_word_swapped(opt->client, OPT3001_CONFIGURATION,
   reg);
}
