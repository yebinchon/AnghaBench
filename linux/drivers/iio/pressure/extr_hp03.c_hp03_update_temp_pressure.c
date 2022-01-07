
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct hp03_priv {int pressure; int temp; int xclr_gpio; int eeprom_regmap; TYPE_1__* client; } ;
struct device {int dummy; } ;
typedef int coefs ;
struct TYPE_2__ {struct device dev; } ;


 int HP03_ADC_READ_PRESSURE ;
 int HP03_ADC_READ_TEMP ;
 int HP03_EEPROM_CX_OFFSET ;
 int dev_err (struct device*,char*,...) ;
 int gpiod_set_value_cansleep (int ,int) ;
 int hp03_get_temp_pressure (struct hp03_priv*,int ) ;
 int regmap_bulk_read (int ,int ,int*,int) ;

__attribute__((used)) static int hp03_update_temp_pressure(struct hp03_priv *priv)
{
 struct device *dev = &priv->client->dev;
 u8 coefs[18];
 u16 cx_val[7];
 int ab_val, d1_val, d2_val, diff_val, dut, off, sens, x;
 int i, ret;


 ret = regmap_bulk_read(priv->eeprom_regmap, HP03_EEPROM_CX_OFFSET,
          coefs, sizeof(coefs));
 if (ret < 0) {
  dev_err(dev, "Failed to read EEPROM (reg=%02x)\n",
   HP03_EEPROM_CX_OFFSET);
  return ret;
 }


 gpiod_set_value_cansleep(priv->xclr_gpio, 1);

 ret = hp03_get_temp_pressure(priv, HP03_ADC_READ_PRESSURE);
 if (ret < 0) {
  dev_err(dev, "Failed to read pressure\n");
  goto err_adc;
 }
 d1_val = ret;

 ret = hp03_get_temp_pressure(priv, HP03_ADC_READ_TEMP);
 if (ret < 0) {
  dev_err(dev, "Failed to read temperature\n");
  goto err_adc;
 }
 d2_val = ret;

 gpiod_set_value_cansleep(priv->xclr_gpio, 0);


 for (i = 0; i < 7; i++)
  cx_val[i] = (coefs[2 * i] << 8) | (coefs[(2 * i) + 1] << 0);
 d1_val = ((d1_val >> 8) & 0xff) | ((d1_val & 0xff) << 8);
 d2_val = ((d2_val >> 8) & 0xff) | ((d2_val & 0xff) << 8);


 if (d2_val >= cx_val[4])
  ab_val = coefs[14];
 else
  ab_val = coefs[15];

 diff_val = d2_val - cx_val[4];
 dut = (ab_val * (diff_val >> 7) * (diff_val >> 7)) >> coefs[16];
 dut = diff_val - dut;

 off = (cx_val[1] + (((cx_val[3] - 1024) * dut) >> 14)) * 4;
 sens = cx_val[0] + ((cx_val[2] * dut) >> 10);
 x = ((sens * (d1_val - 7168)) >> 14) - off;

 priv->pressure = ((x * 100) >> 5) + (cx_val[6] * 10);
 priv->temp = 250 + ((dut * cx_val[5]) >> 16) - (dut >> coefs[17]);

 return 0;

err_adc:
 gpiod_set_value_cansleep(priv->xclr_gpio, 0);
 return ret;
}
