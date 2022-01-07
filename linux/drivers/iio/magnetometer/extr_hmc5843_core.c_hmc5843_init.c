
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;
struct hmc5843_data {int dev; int regmap; } ;


 int ARRAY_SIZE (char*) ;
 int ENODEV ;
 int HMC5843_ID_REG ;
 int HMC5843_MEAS_CONF_NORMAL ;
 int HMC5843_MODE_CONVERSION_CONTINUOUS ;
 int HMC5843_RANGE_GAIN_DEFAULT ;
 int HMC5843_RATE_DEFAULT ;
 int dev_err (int ,char*) ;
 int hmc5843_set_meas_conf (struct hmc5843_data*,int ) ;
 int hmc5843_set_mode (struct hmc5843_data*,int ) ;
 int hmc5843_set_range_gain (struct hmc5843_data*,int ) ;
 int hmc5843_set_samp_freq (struct hmc5843_data*,int ) ;
 int regmap_bulk_read (int ,int ,char*,int ) ;

__attribute__((used)) static int hmc5843_init(struct hmc5843_data *data)
{
 int ret;
 u8 id[3];

 ret = regmap_bulk_read(data->regmap, HMC5843_ID_REG,
          id, ARRAY_SIZE(id));
 if (ret < 0)
  return ret;
 if (id[0] != 'H' || id[1] != '4' || id[2] != '3') {
  dev_err(data->dev, "no HMC5843/5883/5883L/5983 sensor\n");
  return -ENODEV;
 }

 ret = hmc5843_set_meas_conf(data, HMC5843_MEAS_CONF_NORMAL);
 if (ret < 0)
  return ret;
 ret = hmc5843_set_samp_freq(data, HMC5843_RATE_DEFAULT);
 if (ret < 0)
  return ret;
 ret = hmc5843_set_range_gain(data, HMC5843_RANGE_GAIN_DEFAULT);
 if (ret < 0)
  return ret;
 return hmc5843_set_mode(data, HMC5843_MODE_CONVERSION_CONTINUOUS);
}
