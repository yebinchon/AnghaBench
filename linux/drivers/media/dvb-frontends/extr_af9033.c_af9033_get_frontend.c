
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dev; } ;
struct dvb_frontend {struct af9033_dev* demodulator_priv; } ;
struct dtv_frontend_properties {int bandwidth_hz; void* code_rate_LP; void* code_rate_HP; int modulation; int hierarchy; int guard_interval; int transmission_mode; } ;
struct af9033_dev {int regmap; struct i2c_client* client; } ;


 void* FEC_1_2 ;
 void* FEC_2_3 ;
 void* FEC_3_4 ;
 void* FEC_5_6 ;
 void* FEC_7_8 ;
 void* FEC_NONE ;
 int GUARD_INTERVAL_1_16 ;
 int GUARD_INTERVAL_1_32 ;
 int GUARD_INTERVAL_1_4 ;
 int GUARD_INTERVAL_1_8 ;
 int HIERARCHY_1 ;
 int HIERARCHY_2 ;
 int HIERARCHY_4 ;
 int HIERARCHY_NONE ;
 int QAM_16 ;
 int QAM_64 ;
 int QPSK ;
 int TRANSMISSION_MODE_2K ;
 int TRANSMISSION_MODE_8K ;
 int dev_dbg (int *,char*,...) ;
 int regmap_bulk_read (int ,int,int*,int) ;

__attribute__((used)) static int af9033_get_frontend(struct dvb_frontend *fe,
          struct dtv_frontend_properties *c)
{
 struct af9033_dev *dev = fe->demodulator_priv;
 struct i2c_client *client = dev->client;
 int ret;
 u8 buf[8];

 dev_dbg(&client->dev, "\n");


 ret = regmap_bulk_read(dev->regmap, 0x80f900, buf, 8);
 if (ret)
  goto err;

 switch ((buf[0] >> 0) & 3) {
 case 0:
  c->transmission_mode = TRANSMISSION_MODE_2K;
  break;
 case 1:
  c->transmission_mode = TRANSMISSION_MODE_8K;
  break;
 }

 switch ((buf[1] >> 0) & 3) {
 case 0:
  c->guard_interval = GUARD_INTERVAL_1_32;
  break;
 case 1:
  c->guard_interval = GUARD_INTERVAL_1_16;
  break;
 case 2:
  c->guard_interval = GUARD_INTERVAL_1_8;
  break;
 case 3:
  c->guard_interval = GUARD_INTERVAL_1_4;
  break;
 }

 switch ((buf[2] >> 0) & 7) {
 case 0:
  c->hierarchy = HIERARCHY_NONE;
  break;
 case 1:
  c->hierarchy = HIERARCHY_1;
  break;
 case 2:
  c->hierarchy = HIERARCHY_2;
  break;
 case 3:
  c->hierarchy = HIERARCHY_4;
  break;
 }

 switch ((buf[3] >> 0) & 3) {
 case 0:
  c->modulation = QPSK;
  break;
 case 1:
  c->modulation = QAM_16;
  break;
 case 2:
  c->modulation = QAM_64;
  break;
 }

 switch ((buf[4] >> 0) & 3) {
 case 0:
  c->bandwidth_hz = 6000000;
  break;
 case 1:
  c->bandwidth_hz = 7000000;
  break;
 case 2:
  c->bandwidth_hz = 8000000;
  break;
 }

 switch ((buf[6] >> 0) & 7) {
 case 0:
  c->code_rate_HP = FEC_1_2;
  break;
 case 1:
  c->code_rate_HP = FEC_2_3;
  break;
 case 2:
  c->code_rate_HP = FEC_3_4;
  break;
 case 3:
  c->code_rate_HP = FEC_5_6;
  break;
 case 4:
  c->code_rate_HP = FEC_7_8;
  break;
 case 5:
  c->code_rate_HP = FEC_NONE;
  break;
 }

 switch ((buf[7] >> 0) & 7) {
 case 0:
  c->code_rate_LP = FEC_1_2;
  break;
 case 1:
  c->code_rate_LP = FEC_2_3;
  break;
 case 2:
  c->code_rate_LP = FEC_3_4;
  break;
 case 3:
  c->code_rate_LP = FEC_5_6;
  break;
 case 4:
  c->code_rate_LP = FEC_7_8;
  break;
 case 5:
  c->code_rate_LP = FEC_NONE;
  break;
 }

 return 0;
err:
 dev_dbg(&client->dev, "failed=%d\n", ret);
 return ret;
}
