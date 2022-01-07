
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct opt3001 {int dev; int client; } ;


 int OPT3001_DEVICE_ID ;
 int OPT3001_MANUFACTURER_ID ;
 int dev_err (int ,char*,int ) ;
 int dev_info (int ,char*,char,char,int) ;
 int i2c_smbus_read_word_swapped (int ,int ) ;

__attribute__((used)) static int opt3001_read_id(struct opt3001 *opt)
{
 char manufacturer[2];
 u16 device_id;
 int ret;

 ret = i2c_smbus_read_word_swapped(opt->client, OPT3001_MANUFACTURER_ID);
 if (ret < 0) {
  dev_err(opt->dev, "failed to read register %02x\n",
    OPT3001_MANUFACTURER_ID);
  return ret;
 }

 manufacturer[0] = ret >> 8;
 manufacturer[1] = ret & 0xff;

 ret = i2c_smbus_read_word_swapped(opt->client, OPT3001_DEVICE_ID);
 if (ret < 0) {
  dev_err(opt->dev, "failed to read register %02x\n",
    OPT3001_DEVICE_ID);
  return ret;
 }

 device_id = ret;

 dev_info(opt->dev, "Found %c%c OPT%04x\n", manufacturer[0],
   manufacturer[1], device_id);

 return 0;
}
