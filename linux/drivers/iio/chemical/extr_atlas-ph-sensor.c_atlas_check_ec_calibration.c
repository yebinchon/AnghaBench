
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct atlas_data {int regmap; TYPE_1__* client; } ;
typedef int __be16 ;
struct TYPE_2__ {struct device dev; } ;


 int ATLAS_REG_EC_CALIB_STATUS ;
 unsigned int ATLAS_REG_EC_CALIB_STATUS_DRY ;
 unsigned int ATLAS_REG_EC_CALIB_STATUS_HIGH ;
 unsigned int ATLAS_REG_EC_CALIB_STATUS_LOW ;
 unsigned int ATLAS_REG_EC_CALIB_STATUS_MASK ;
 unsigned int ATLAS_REG_EC_CALIB_STATUS_SINGLE ;
 int ATLAS_REG_EC_PROBE ;
 unsigned int be16_to_cpu (int ) ;
 int dev_info (struct device*,char*,unsigned int,unsigned int) ;
 int dev_warn (struct device*,char*) ;
 int regmap_bulk_read (int ,int ,int *,int) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int atlas_check_ec_calibration(struct atlas_data *data)
{
 struct device *dev = &data->client->dev;
 int ret;
 unsigned int val;
 __be16 rval;

 ret = regmap_bulk_read(data->regmap, ATLAS_REG_EC_PROBE, &rval, 2);
 if (ret)
  return ret;

 val = be16_to_cpu(rval);
 dev_info(dev, "probe set to K = %d.%.2d", val / 100, val % 100);

 ret = regmap_read(data->regmap, ATLAS_REG_EC_CALIB_STATUS, &val);
 if (ret)
  return ret;

 if (!(val & ATLAS_REG_EC_CALIB_STATUS_MASK)) {
  dev_warn(dev, "device has not been calibrated\n");
  return 0;
 }

 if (!(val & ATLAS_REG_EC_CALIB_STATUS_DRY))
  dev_warn(dev, "device missing dry point calibration\n");

 if (val & ATLAS_REG_EC_CALIB_STATUS_SINGLE) {
  dev_warn(dev, "device using single point calibration\n");
 } else {
  if (!(val & ATLAS_REG_EC_CALIB_STATUS_LOW))
   dev_warn(dev, "device missing low point calibration\n");

  if (!(val & ATLAS_REG_EC_CALIB_STATUS_HIGH))
   dev_warn(dev, "device missing high point calibration\n");
 }

 return 0;
}
