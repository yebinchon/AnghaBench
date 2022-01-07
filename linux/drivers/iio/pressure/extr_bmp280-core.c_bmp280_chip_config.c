
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bmp280_data {int dev; int regmap; scalar_t__ oversampling_press; scalar_t__ oversampling_temp; } ;


 int BMP280_FILTER_4X ;
 int BMP280_FILTER_MASK ;
 int BMP280_MODE_MASK ;
 int BMP280_MODE_NORMAL ;
 int BMP280_OSRS_PRESS_MASK ;
 int BMP280_OSRS_PRESS_X (scalar_t__) ;
 int BMP280_OSRS_TEMP_MASK ;
 int BMP280_OSRS_TEMP_X (scalar_t__) ;
 int BMP280_REG_CONFIG ;
 int BMP280_REG_CTRL_MEAS ;
 int dev_err (int ,char*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int regmap_write_bits (int ,int ,int,int) ;

__attribute__((used)) static int bmp280_chip_config(struct bmp280_data *data)
{
 int ret;
 u8 osrs = BMP280_OSRS_TEMP_X(data->oversampling_temp + 1) |
    BMP280_OSRS_PRESS_X(data->oversampling_press + 1);

 ret = regmap_write_bits(data->regmap, BMP280_REG_CTRL_MEAS,
     BMP280_OSRS_TEMP_MASK |
     BMP280_OSRS_PRESS_MASK |
     BMP280_MODE_MASK,
     osrs | BMP280_MODE_NORMAL);
 if (ret < 0) {
  dev_err(data->dev,
   "failed to write ctrl_meas register\n");
  return ret;
 }

 ret = regmap_update_bits(data->regmap, BMP280_REG_CONFIG,
     BMP280_FILTER_MASK,
     BMP280_FILTER_4X);
 if (ret < 0) {
  dev_err(data->dev,
   "failed to write config register\n");
  return ret;
 }

 return ret;
}
