
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kxcjk1013_data {scalar_t__ chipset; TYPE_1__* client; int odr_bits; } ;
struct kx_odr_map {int wuf_bits; int odr_bits; } ;
typedef enum kxcjk1013_mode { ____Placeholder_kxcjk1013_mode } kxcjk1013_mode ;
struct TYPE_2__ {int dev; } ;


 int ARRAY_SIZE (int ) ;
 scalar_t__ IS_ERR (struct kx_odr_map const*) ;
 int KXCJK1013_REG_CTRL2 ;
 int KXCJK1013_REG_DATA_CTRL ;
 scalar_t__ KXTF9 ;
 int OPERATION ;
 int PTR_ERR (struct kx_odr_map const*) ;
 int STANDBY ;
 int dev_err (int *,char*) ;
 int i2c_smbus_write_byte_data (TYPE_1__*,int ,int ) ;
 struct kx_odr_map* kxcjk1013_find_odr_value (int ,int ,int,int) ;
 int kxcjk1013_get_mode (struct kxcjk1013_data*,int*) ;
 int kxcjk1013_set_mode (struct kxcjk1013_data*,int) ;
 int kxtf9_samp_freq_table ;
 int samp_freq_table ;

__attribute__((used)) static int kxcjk1013_set_odr(struct kxcjk1013_data *data, int val, int val2)
{
 int ret;
 enum kxcjk1013_mode store_mode;
 const struct kx_odr_map *odr_setting;

 ret = kxcjk1013_get_mode(data, &store_mode);
 if (ret < 0)
  return ret;

 if (data->chipset == KXTF9)
  odr_setting = kxcjk1013_find_odr_value(kxtf9_samp_freq_table,
             ARRAY_SIZE(kxtf9_samp_freq_table),
             val, val2);
 else
  odr_setting = kxcjk1013_find_odr_value(samp_freq_table,
             ARRAY_SIZE(samp_freq_table),
             val, val2);

 if (IS_ERR(odr_setting))
  return PTR_ERR(odr_setting);


 ret = kxcjk1013_set_mode(data, STANDBY);
 if (ret < 0)
  return ret;

 ret = i2c_smbus_write_byte_data(data->client, KXCJK1013_REG_DATA_CTRL,
     odr_setting->odr_bits);
 if (ret < 0) {
  dev_err(&data->client->dev, "Error writing data_ctrl\n");
  return ret;
 }

 data->odr_bits = odr_setting->odr_bits;

 ret = i2c_smbus_write_byte_data(data->client, KXCJK1013_REG_CTRL2,
     odr_setting->wuf_bits);
 if (ret < 0) {
  dev_err(&data->client->dev, "Error writing reg_ctrl2\n");
  return ret;
 }

 if (store_mode == OPERATION) {
  ret = kxcjk1013_set_mode(data, OPERATION);
  if (ret < 0)
   return ret;
 }

 return 0;
}
