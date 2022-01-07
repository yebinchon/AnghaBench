
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int uscale; int scale; } ;
struct isl29018_chip {size_t type; size_t int_time; TYPE_1__ scale; int regmap; } ;
struct device {int dummy; } ;


 int ENODEV ;
 int ISL29018_REG_ADD_COMMAND1 ;
 int ISL29018_REG_TEST ;
 int ISL29035_BOUT_MASK ;
 unsigned int ISL29035_DEVICE_ID ;
 unsigned int ISL29035_DEVICE_ID_MASK ;
 unsigned int ISL29035_DEVICE_ID_SHIFT ;
 int ISL29035_REG_DEVICE_ID ;
 int dev_err (struct device*,char*,...) ;
 int ** isl29018_int_utimes ;
 int isl29018_set_integration_time (struct isl29018_chip*,int ) ;
 int isl29018_set_scale (struct isl29018_chip*,int ,int ) ;
 size_t isl29035 ;
 struct device* regmap_get_device (int ) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int regmap_write (int ,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int isl29018_chip_init(struct isl29018_chip *chip)
{
 int status;
 struct device *dev = regmap_get_device(chip->regmap);

 if (chip->type == isl29035) {
  unsigned int id;

  status = regmap_read(chip->regmap, ISL29035_REG_DEVICE_ID, &id);
  if (status < 0) {
   dev_err(dev,
    "Error reading ID register with error %d\n",
    status);
   return status;
  }

  id = (id & ISL29035_DEVICE_ID_MASK) >> ISL29035_DEVICE_ID_SHIFT;

  if (id != ISL29035_DEVICE_ID)
   return -ENODEV;


  status = regmap_update_bits(chip->regmap,
         ISL29035_REG_DEVICE_ID,
         ISL29035_BOUT_MASK, 0);
  if (status < 0)
   return status;
 }
 status = regmap_write(chip->regmap, ISL29018_REG_TEST, 0x0);
 if (status < 0) {
  dev_err(dev, "Failed to clear isl29018 TEST reg.(%d)\n",
   status);
  return status;
 }






 status = regmap_write(chip->regmap, ISL29018_REG_ADD_COMMAND1, 0);
 if (status < 0) {
  dev_err(dev, "Failed to clear isl29018 CMD1 reg.(%d)\n",
   status);
  return status;
 }

 usleep_range(1000, 2000);


 status = isl29018_set_scale(chip, chip->scale.scale,
        chip->scale.uscale);
 if (status < 0) {
  dev_err(dev, "Init of isl29018 fails\n");
  return status;
 }

 status = isl29018_set_integration_time(chip,
   isl29018_int_utimes[chip->type][chip->int_time]);
 if (status < 0)
  dev_err(dev, "Init of isl29018 fails\n");

 return status;
}
