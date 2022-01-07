
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ina2xx_data {TYPE_1__* config; int regmap; } ;
struct TYPE_2__ {int calibration_value; } ;


 int INA2XX_CALIBRATION ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static int ina2xx_calibrate(struct ina2xx_data *data)
{
 return regmap_write(data->regmap, INA2XX_CALIBRATION,
       data->config->calibration_value);
}
