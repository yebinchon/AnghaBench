
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tsl2563_chip {int high_thres; int low_thres; int client; TYPE_1__* gainlevel; } ;
struct TYPE_2__ {int gaintime; } ;


 int TSL2563_CMD ;
 int TSL2563_REG_HIGHHIGH ;
 int TSL2563_REG_HIGHLOW ;
 int TSL2563_REG_LOWHIGH ;
 int TSL2563_REG_LOWLOW ;
 int TSL2563_REG_TIMING ;
 int i2c_smbus_write_byte_data (int ,int,int) ;

__attribute__((used)) static int tsl2563_configure(struct tsl2563_chip *chip)
{
 int ret;

 ret = i2c_smbus_write_byte_data(chip->client,
   TSL2563_CMD | TSL2563_REG_TIMING,
   chip->gainlevel->gaintime);
 if (ret)
  goto error_ret;
 ret = i2c_smbus_write_byte_data(chip->client,
   TSL2563_CMD | TSL2563_REG_HIGHLOW,
   chip->high_thres & 0xFF);
 if (ret)
  goto error_ret;
 ret = i2c_smbus_write_byte_data(chip->client,
   TSL2563_CMD | TSL2563_REG_HIGHHIGH,
   (chip->high_thres >> 8) & 0xFF);
 if (ret)
  goto error_ret;
 ret = i2c_smbus_write_byte_data(chip->client,
   TSL2563_CMD | TSL2563_REG_LOWLOW,
   chip->low_thres & 0xFF);
 if (ret)
  goto error_ret;
 ret = i2c_smbus_write_byte_data(chip->client,
   TSL2563_CMD | TSL2563_REG_LOWHIGH,
   (chip->low_thres >> 8) & 0xFF);




error_ret:
 return ret;
}
