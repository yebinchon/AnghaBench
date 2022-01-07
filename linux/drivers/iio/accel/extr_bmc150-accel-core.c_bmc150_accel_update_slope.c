
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct bmc150_accel_data {int slope_dur; int slope_thres; int regmap; } ;


 int BMC150_ACCEL_REG_INT_5 ;
 int BMC150_ACCEL_REG_INT_6 ;
 int BMC150_ACCEL_SLOPE_DUR_MASK ;
 int dev_dbg (struct device*,char*,int ,int ) ;
 int dev_err (struct device*,char*) ;
 struct device* regmap_get_device (int ) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static int bmc150_accel_update_slope(struct bmc150_accel_data *data)
{
 struct device *dev = regmap_get_device(data->regmap);
 int ret;

 ret = regmap_write(data->regmap, BMC150_ACCEL_REG_INT_6,
     data->slope_thres);
 if (ret < 0) {
  dev_err(dev, "Error writing reg_int_6\n");
  return ret;
 }

 ret = regmap_update_bits(data->regmap, BMC150_ACCEL_REG_INT_5,
     BMC150_ACCEL_SLOPE_DUR_MASK, data->slope_dur);
 if (ret < 0) {
  dev_err(dev, "Error updating reg_int_5\n");
  return ret;
 }

 dev_dbg(dev, "%x %x\n", data->slope_thres, data->slope_dur);

 return ret;
}
