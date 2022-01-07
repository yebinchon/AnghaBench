
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct device {int dummy; } ;
struct bmc150_accel_data {int range; int regmap; int slope_dur; int slope_thres; TYPE_1__* chip_info; } ;
struct TYPE_3__ {unsigned int chip_id; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int BMC150_ACCEL_DEF_BW ;
 int BMC150_ACCEL_DEF_RANGE_4G ;
 int BMC150_ACCEL_DEF_SLOPE_DURATION ;
 int BMC150_ACCEL_DEF_SLOPE_THRESHOLD ;
 int BMC150_ACCEL_INT_MODE_LATCH_INT ;
 int BMC150_ACCEL_INT_MODE_LATCH_RESET ;
 int BMC150_ACCEL_REG_CHIP_ID ;
 int BMC150_ACCEL_REG_INT_RST_LATCH ;
 int BMC150_ACCEL_REG_PMU_RANGE ;
 int BMC150_ACCEL_REG_RESET ;
 int BMC150_ACCEL_RESET_VAL ;
 int BMC150_ACCEL_SLEEP_MODE_NORMAL ;
 int ENODEV ;
 TYPE_1__* bmc150_accel_chip_info_tbl ;
 int bmc150_accel_set_bw (struct bmc150_accel_data*,int ,int ) ;
 int bmc150_accel_set_mode (struct bmc150_accel_data*,int ,int ) ;
 int bmc150_accel_update_slope (struct bmc150_accel_data*) ;
 int dev_dbg (struct device*,char*,unsigned int) ;
 int dev_err (struct device*,char*,...) ;
 struct device* regmap_get_device (int ) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write (int ,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int bmc150_accel_chip_init(struct bmc150_accel_data *data)
{
 struct device *dev = regmap_get_device(data->regmap);
 int ret, i;
 unsigned int val;





 regmap_write(data->regmap, BMC150_ACCEL_REG_RESET,
       BMC150_ACCEL_RESET_VAL);
 usleep_range(1800, 2500);

 ret = regmap_read(data->regmap, BMC150_ACCEL_REG_CHIP_ID, &val);
 if (ret < 0) {
  dev_err(dev, "Error: Reading chip id\n");
  return ret;
 }

 dev_dbg(dev, "Chip Id %x\n", val);
 for (i = 0; i < ARRAY_SIZE(bmc150_accel_chip_info_tbl); i++) {
  if (bmc150_accel_chip_info_tbl[i].chip_id == val) {
   data->chip_info = &bmc150_accel_chip_info_tbl[i];
   break;
  }
 }

 if (!data->chip_info) {
  dev_err(dev, "Invalid chip %x\n", val);
  return -ENODEV;
 }

 ret = bmc150_accel_set_mode(data, BMC150_ACCEL_SLEEP_MODE_NORMAL, 0);
 if (ret < 0)
  return ret;


 ret = bmc150_accel_set_bw(data, BMC150_ACCEL_DEF_BW, 0);
 if (ret < 0)
  return ret;


 ret = regmap_write(data->regmap, BMC150_ACCEL_REG_PMU_RANGE,
      BMC150_ACCEL_DEF_RANGE_4G);
 if (ret < 0) {
  dev_err(dev, "Error writing reg_pmu_range\n");
  return ret;
 }

 data->range = BMC150_ACCEL_DEF_RANGE_4G;


 data->slope_thres = BMC150_ACCEL_DEF_SLOPE_THRESHOLD;
 data->slope_dur = BMC150_ACCEL_DEF_SLOPE_DURATION;
 ret = bmc150_accel_update_slope(data);
 if (ret < 0)
  return ret;


 ret = regmap_write(data->regmap, BMC150_ACCEL_REG_INT_RST_LATCH,
      BMC150_ACCEL_INT_MODE_LATCH_INT |
      BMC150_ACCEL_INT_MODE_LATCH_RESET);
 if (ret < 0) {
  dev_err(dev, "Error writing reg_int_rst_latch\n");
  return ret;
 }

 return 0;
}
