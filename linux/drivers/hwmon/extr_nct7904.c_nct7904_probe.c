
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct nct7904_data {int bank_sel; int fanin_mask; int vsen_mask; int tcpu_mask; int temp_mode; int enable_dts; int has_dts; int* fan_mode; int bank_lock; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int name; struct device dev; } ;


 int BANK_0 ;
 int BANK_2 ;
 int BANK_3 ;
 scalar_t__ DTS_T_CTRL0_REG ;
 scalar_t__ DTS_T_CTRL1_REG ;
 int ENABLE_TSI ;
 int ENOMEM ;
 scalar_t__ FANCTL1_FMR_REG ;
 int FANCTL_MAX ;
 scalar_t__ FANIN_CTRL0_REG ;
 int GFP_KERNEL ;
 scalar_t__ PFE_REG ;
 int PTR_ERR_OR_ZERO (struct device*) ;
 int THERMAL_DIODE_MODE ;
 int THERMISTOR_MODE ;
 scalar_t__ TSI_CTRL_REG ;
 int VOLT_MONITOR_MODE ;
 scalar_t__ VT_ADC_CTRL0_REG ;
 scalar_t__ VT_ADC_CTRL2_REG ;
 scalar_t__ VT_ADC_MD_REG ;
 struct device* devm_hwmon_device_register_with_info (struct device*,int ,struct nct7904_data*,int *,int *) ;
 struct nct7904_data* devm_kzalloc (struct device*,int,int ) ;
 int mutex_init (int *) ;
 int nct7904_chip_info ;
 int nct7904_read_reg (struct nct7904_data*,int ,scalar_t__) ;
 int nct7904_read_reg16 (struct nct7904_data*,int ,scalar_t__) ;

__attribute__((used)) static int nct7904_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct nct7904_data *data;
 struct device *hwmon_dev;
 struct device *dev = &client->dev;
 int ret, i;
 u32 mask;
 u8 val, bit;

 data = devm_kzalloc(dev, sizeof(struct nct7904_data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->client = client;
 mutex_init(&data->bank_lock);
 data->bank_sel = -1;



 ret = nct7904_read_reg16(data, BANK_0, FANIN_CTRL0_REG);
 if (ret < 0)
  return ret;
 data->fanin_mask = (ret >> 8) | ((ret & 0xff) << 8);
 mask = 0;
 ret = nct7904_read_reg16(data, BANK_0, VT_ADC_CTRL0_REG);
 if (ret >= 0)
  mask = (ret >> 8) | ((ret & 0xff) << 8);
 ret = nct7904_read_reg(data, BANK_0, VT_ADC_CTRL2_REG);
 if (ret >= 0)
  mask |= (ret << 16);
 data->vsen_mask = mask;


 ret = nct7904_read_reg(data, BANK_0, VT_ADC_CTRL0_REG);
 if (ret < 0)
  return ret;

 if ((ret & 0x6) == 0x6)
  data->tcpu_mask |= 1;
 if ((ret & 0x18) == 0x18)
  data->tcpu_mask |= 2;
 if ((ret & 0x20) == 0x20)
  data->tcpu_mask |= 4;
 if ((ret & 0x80) == 0x80)
  data->tcpu_mask |= 8;


 ret = nct7904_read_reg(data, BANK_0, VT_ADC_CTRL2_REG);
 if (ret < 0)
  return ret;
 if ((ret & 0x02) == 0x02)
  data->tcpu_mask |= 0x10;


 ret = nct7904_read_reg(data, BANK_0, VT_ADC_MD_REG);
 if (ret < 0)
  return ret;

 data->temp_mode = 0;
 for (i = 0; i < 4; i++) {
  val = (ret >> (i * 2)) & 0x03;
  bit = (1 << i);
  if (val == VOLT_MONITOR_MODE) {
   data->tcpu_mask &= ~bit;
  } else if (val == THERMAL_DIODE_MODE && i < 2) {
   data->temp_mode |= bit;
   data->vsen_mask &= ~(0x06 << (i * 2));
  } else if (val == THERMISTOR_MODE) {
   data->vsen_mask &= ~(0x02 << (i * 2));
  } else {

   data->tcpu_mask &= ~bit;
   data->vsen_mask &= ~(0x06 << (i * 2));
  }
 }


 ret = nct7904_read_reg(data, BANK_2, PFE_REG);
 if (ret < 0)
  return ret;
 if (ret & 0x80) {
  data->enable_dts = 1;
 } else {
  ret = nct7904_read_reg(data, BANK_2, TSI_CTRL_REG);
  if (ret < 0)
   return ret;
  if (ret & 0x80)
   data->enable_dts = 0x3;
 }


 if (data->enable_dts) {
  ret = nct7904_read_reg(data, BANK_0, DTS_T_CTRL0_REG);
  if (ret < 0)
   return ret;
  data->has_dts = ret & 0xF;
  if (data->enable_dts & ENABLE_TSI) {
   ret = nct7904_read_reg(data, BANK_0, DTS_T_CTRL1_REG);
   if (ret < 0)
    return ret;
   data->has_dts |= (ret & 0xF) << 4;
  }
 }

 for (i = 0; i < FANCTL_MAX; i++) {
  ret = nct7904_read_reg(data, BANK_3, FANCTL1_FMR_REG + i);
  if (ret < 0)
   return ret;
  data->fan_mode[i] = ret;
 }

 hwmon_dev =
  devm_hwmon_device_register_with_info(dev, client->name, data,
           &nct7904_chip_info, ((void*)0));
 return PTR_ERR_OR_ZERO(hwmon_dev);
}
