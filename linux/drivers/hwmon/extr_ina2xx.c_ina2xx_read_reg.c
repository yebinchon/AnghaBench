
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ina2xx_data {int regmap; } ;
struct device {int dummy; } ;


 int ENODEV ;
 int INA2XX_CALIBRATION ;
 int INA2XX_MAX_DELAY ;
 int dev_dbg (struct device*,char*,int,...) ;
 int dev_err (struct device*,char*) ;
 struct ina2xx_data* dev_get_drvdata (struct device*) ;
 int dev_warn (struct device*,char*) ;
 int ina2xx_init (struct ina2xx_data*) ;
 int msleep (int ) ;
 int regmap_read (int ,int,unsigned int*) ;

__attribute__((used)) static int ina2xx_read_reg(struct device *dev, int reg, unsigned int *regval)
{
 struct ina2xx_data *data = dev_get_drvdata(dev);
 int ret, retry;

 dev_dbg(dev, "Starting register %d read\n", reg);

 for (retry = 5; retry; retry--) {

  ret = regmap_read(data->regmap, reg, regval);
  if (ret < 0)
   return ret;

  dev_dbg(dev, "read %d, val = 0x%04x\n", reg, *regval);
  if (*regval == 0) {
   unsigned int cal;

   ret = regmap_read(data->regmap, INA2XX_CALIBRATION,
       &cal);
   if (ret < 0)
    return ret;

   if (cal == 0) {
    dev_warn(dev, "chip not calibrated, reinitializing\n");

    ret = ina2xx_init(data);
    if (ret < 0)
     return ret;





    msleep(INA2XX_MAX_DELAY);
    continue;
   }
  }
  return 0;
 }






 dev_err(dev, "unable to reinitialize the chip\n");
 return -ENODEV;
}
