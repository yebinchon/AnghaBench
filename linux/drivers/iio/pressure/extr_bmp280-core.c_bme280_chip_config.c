
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bmp280_data {int regmap; scalar_t__ oversampling_humid; } ;


 int BMP280_OSRS_HUMIDITIY_X (scalar_t__) ;
 int BMP280_OSRS_HUMIDITY_MASK ;
 int BMP280_REG_CTRL_HUMIDITY ;
 int bmp280_chip_config (struct bmp280_data*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int bme280_chip_config(struct bmp280_data *data)
{
 int ret;
 u8 osrs = BMP280_OSRS_HUMIDITIY_X(data->oversampling_humid + 1);





 ret = regmap_update_bits(data->regmap, BMP280_REG_CTRL_HUMIDITY,
      BMP280_OSRS_HUMIDITY_MASK, osrs);

 if (ret < 0)
  return ret;

 return bmp280_chip_config(data);
}
