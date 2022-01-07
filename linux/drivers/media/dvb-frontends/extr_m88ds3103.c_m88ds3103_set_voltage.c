
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct m88ds3103_dev {TYPE_1__* cfg; int warm; struct i2c_client* client; } ;
struct i2c_client {int dev; } ;
struct dvb_frontend {struct m88ds3103_dev* demodulator_priv; } ;
typedef enum fe_sec_voltage { ____Placeholder_fe_sec_voltage } fe_sec_voltage ;
struct TYPE_2__ {int lnb_hv_pol; int lnb_en_pol; } ;


 int EAGAIN ;
 int EINVAL ;



 int dev_dbg (int *,char*,...) ;
 int m88ds3103_update_bits (struct m88ds3103_dev*,int,int,unsigned int) ;

__attribute__((used)) static int m88ds3103_set_voltage(struct dvb_frontend *fe,
 enum fe_sec_voltage fe_sec_voltage)
{
 struct m88ds3103_dev *dev = fe->demodulator_priv;
 struct i2c_client *client = dev->client;
 int ret;
 unsigned int utmp;
 bool voltage_sel, voltage_dis;

 dev_dbg(&client->dev, "fe_sec_voltage=%d\n", fe_sec_voltage);

 if (!dev->warm) {
  ret = -EAGAIN;
  goto err;
 }

 switch (fe_sec_voltage) {
 case 129:
  voltage_sel = 1;
  voltage_dis = 0;
  break;
 case 130:
  voltage_sel = 0;
  voltage_dis = 0;
  break;
 case 128:
  voltage_sel = 0;
  voltage_dis = 1;
  break;
 default:
  dev_dbg(&client->dev, "invalid fe_sec_voltage\n");
  ret = -EINVAL;
  goto err;
 }


 voltage_sel ^= dev->cfg->lnb_hv_pol;
 voltage_dis ^= dev->cfg->lnb_en_pol;

 utmp = voltage_dis << 1 | voltage_sel << 0;
 ret = m88ds3103_update_bits(dev, 0xa2, 0x03, utmp);
 if (ret)
  goto err;

 return 0;
err:
 dev_dbg(&client->dev, "failed=%d\n", ret);
 return ret;
}
