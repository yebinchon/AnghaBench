
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct m88ds3103_dev {int fe_status; int mclk; int regmap; int warm; struct i2c_client* client; } ;
struct i2c_client {int dev; } ;
struct dvb_frontend {struct m88ds3103_dev* demodulator_priv; } ;
struct dtv_frontend_properties {int delivery_system; int symbol_rate; int rolloff; void* inversion; void* modulation; int pilot; void* fec_inner; } ;


 void* APSK_16 ;
 void* APSK_32 ;
 int DIV_ROUND_CLOSEST_ULL (int,int) ;
 int EINVAL ;
 void* FEC_1_2 ;
 void* FEC_2_3 ;
 void* FEC_2_5 ;
 void* FEC_3_4 ;
 void* FEC_3_5 ;
 void* FEC_4_5 ;
 void* FEC_5_6 ;
 void* FEC_7_8 ;
 void* FEC_8_9 ;
 void* FEC_9_10 ;
 int FE_HAS_LOCK ;
 void* INVERSION_OFF ;
 void* INVERSION_ON ;
 int PILOT_OFF ;
 int PILOT_ON ;
 void* PSK_8 ;
 void* QPSK ;
 int ROLLOFF_20 ;
 int ROLLOFF_25 ;
 int ROLLOFF_35 ;


 int dev_dbg (int *,char*,...) ;
 int regmap_bulk_read (int ,int,int*,int) ;

__attribute__((used)) static int m88ds3103_get_frontend(struct dvb_frontend *fe,
      struct dtv_frontend_properties *c)
{
 struct m88ds3103_dev *dev = fe->demodulator_priv;
 struct i2c_client *client = dev->client;
 int ret;
 u8 buf[3];

 dev_dbg(&client->dev, "\n");

 if (!dev->warm || !(dev->fe_status & FE_HAS_LOCK)) {
  ret = 0;
  goto err;
 }

 switch (c->delivery_system) {
 case 129:
  ret = regmap_bulk_read(dev->regmap, 0xe0, &buf[0], 1);
  if (ret)
   goto err;

  ret = regmap_bulk_read(dev->regmap, 0xe6, &buf[1], 1);
  if (ret)
   goto err;

  switch ((buf[0] >> 2) & 0x01) {
  case 0:
   c->inversion = INVERSION_OFF;
   break;
  case 1:
   c->inversion = INVERSION_ON;
   break;
  }

  switch ((buf[1] >> 5) & 0x07) {
  case 0:
   c->fec_inner = FEC_7_8;
   break;
  case 1:
   c->fec_inner = FEC_5_6;
   break;
  case 2:
   c->fec_inner = FEC_3_4;
   break;
  case 3:
   c->fec_inner = FEC_2_3;
   break;
  case 4:
   c->fec_inner = FEC_1_2;
   break;
  default:
   dev_dbg(&client->dev, "invalid fec_inner\n");
  }

  c->modulation = QPSK;

  break;
 case 128:
  ret = regmap_bulk_read(dev->regmap, 0x7e, &buf[0], 1);
  if (ret)
   goto err;

  ret = regmap_bulk_read(dev->regmap, 0x89, &buf[1], 1);
  if (ret)
   goto err;

  ret = regmap_bulk_read(dev->regmap, 0xf2, &buf[2], 1);
  if (ret)
   goto err;

  switch ((buf[0] >> 0) & 0x0f) {
  case 2:
   c->fec_inner = FEC_2_5;
   break;
  case 3:
   c->fec_inner = FEC_1_2;
   break;
  case 4:
   c->fec_inner = FEC_3_5;
   break;
  case 5:
   c->fec_inner = FEC_2_3;
   break;
  case 6:
   c->fec_inner = FEC_3_4;
   break;
  case 7:
   c->fec_inner = FEC_4_5;
   break;
  case 8:
   c->fec_inner = FEC_5_6;
   break;
  case 9:
   c->fec_inner = FEC_8_9;
   break;
  case 10:
   c->fec_inner = FEC_9_10;
   break;
  default:
   dev_dbg(&client->dev, "invalid fec_inner\n");
  }

  switch ((buf[0] >> 5) & 0x01) {
  case 0:
   c->pilot = PILOT_OFF;
   break;
  case 1:
   c->pilot = PILOT_ON;
   break;
  }

  switch ((buf[0] >> 6) & 0x07) {
  case 0:
   c->modulation = QPSK;
   break;
  case 1:
   c->modulation = PSK_8;
   break;
  case 2:
   c->modulation = APSK_16;
   break;
  case 3:
   c->modulation = APSK_32;
   break;
  default:
   dev_dbg(&client->dev, "invalid modulation\n");
  }

  switch ((buf[1] >> 7) & 0x01) {
  case 0:
   c->inversion = INVERSION_OFF;
   break;
  case 1:
   c->inversion = INVERSION_ON;
   break;
  }

  switch ((buf[2] >> 0) & 0x03) {
  case 0:
   c->rolloff = ROLLOFF_35;
   break;
  case 1:
   c->rolloff = ROLLOFF_25;
   break;
  case 2:
   c->rolloff = ROLLOFF_20;
   break;
  default:
   dev_dbg(&client->dev, "invalid rolloff\n");
  }
  break;
 default:
  dev_dbg(&client->dev, "invalid delivery_system\n");
  ret = -EINVAL;
  goto err;
 }

 ret = regmap_bulk_read(dev->regmap, 0x6d, buf, 2);
 if (ret)
  goto err;

 c->symbol_rate = DIV_ROUND_CLOSEST_ULL((u64)(buf[1] << 8 | buf[0] << 0) * dev->mclk, 0x10000);

 return 0;
err:
 dev_dbg(&client->dev, "failed=%d\n", ret);
 return ret;
}
