
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isl29018_chip {int regmap; } ;
struct device {int dummy; } ;


 int ISL29018_CMD1_OPMODE_SHIFT ;
 int ISL29018_CONV_TIME_MS ;
 int ISL29018_REG_ADD_COMMAND1 ;
 int ISL29018_REG_ADD_DATA_LSB ;
 int ISL29018_REG_ADD_DATA_MSB ;
 int dev_err (struct device*,char*,int) ;
 int dev_vdbg (struct device*,char*,unsigned int,unsigned int) ;
 int msleep (int ) ;
 struct device* regmap_get_device (int ) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int isl29018_read_sensor_input(struct isl29018_chip *chip, int mode)
{
 int status;
 unsigned int lsb;
 unsigned int msb;
 struct device *dev = regmap_get_device(chip->regmap);


 status = regmap_write(chip->regmap, ISL29018_REG_ADD_COMMAND1,
         mode << ISL29018_CMD1_OPMODE_SHIFT);
 if (status) {
  dev_err(dev,
   "Error in setting operating mode err %d\n", status);
  return status;
 }
 msleep(ISL29018_CONV_TIME_MS);
 status = regmap_read(chip->regmap, ISL29018_REG_ADD_DATA_LSB, &lsb);
 if (status < 0) {
  dev_err(dev,
   "Error in reading LSB DATA with err %d\n", status);
  return status;
 }

 status = regmap_read(chip->regmap, ISL29018_REG_ADD_DATA_MSB, &msb);
 if (status < 0) {
  dev_err(dev,
   "Error in reading MSB DATA with error %d\n", status);
  return status;
 }
 dev_vdbg(dev, "MSB 0x%x and LSB 0x%x\n", msb, lsb);

 return (msb << 8) | lsb;
}
