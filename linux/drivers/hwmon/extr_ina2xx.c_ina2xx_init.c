
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ina2xx_data {TYPE_1__* config; int regmap; } ;
struct TYPE_2__ {int config_default; } ;


 int INA2XX_CONFIG ;
 int ina2xx_calibrate (struct ina2xx_data*) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static int ina2xx_init(struct ina2xx_data *data)
{
 int ret = regmap_write(data->regmap, INA2XX_CONFIG,
          data->config->config_default);
 if (ret < 0)
  return ret;

 return ina2xx_calibrate(data);
}
