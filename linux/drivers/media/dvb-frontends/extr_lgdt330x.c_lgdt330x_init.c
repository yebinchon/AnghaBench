
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_9__ {int demod_chip; int clock_polarity_flip; } ;
struct lgdt330x_state {scalar_t__ last_stats_time; TYPE_2__* client; TYPE_1__ config; } ;
struct TYPE_16__ {int len; TYPE_7__* stat; } ;
struct TYPE_14__ {int len; TYPE_5__* stat; } ;
struct TYPE_12__ {int len; TYPE_3__* stat; } ;
struct dtv_frontend_properties {TYPE_8__ block_count; TYPE_6__ block_error; TYPE_4__ cnr; } ;
struct dvb_frontend {struct dtv_frontend_properties dtv_property_cache; struct lgdt330x_state* demodulator_priv; } ;
typedef int lgdt3303_init_data ;
typedef int lgdt3302_init_data ;
typedef int flip_2_lgdt3303_init_data ;
typedef int flip_1_lgdt3303_init_data ;
struct TYPE_15__ {void* scale; } ;
struct TYPE_13__ {void* scale; } ;
struct TYPE_11__ {void* scale; } ;
struct TYPE_10__ {int dev; } ;
 int ENODEV ;
 void* FE_SCALE_NOT_AVAILABLE ;






 int dev_warn (int *,char*) ;
 int dprintk (struct lgdt330x_state*,char*,char*) ;
 int i2c_write_demod_bytes (struct lgdt330x_state*,int const*,int) ;
 int lgdt330x_sw_reset (struct lgdt330x_state*) ;

__attribute__((used)) static int lgdt330x_init(struct dvb_frontend *fe)
{
 struct lgdt330x_state *state = fe->demodulator_priv;
 struct dtv_frontend_properties *p = &fe->dtv_property_cache;
 char *chip_name;
 int err;




 static const u8 lgdt3302_init_data[] = {





  131, 0x00,
  130, 0x87,
  129, 0x8e,
  128, 0x01,




  134, 0xfb,




  137, 0x40,
  136, 0x93,
  135, 0x00,




  141, 0xc6,




  140, 0x40,




  143, 0x07,
  142, 0xfe,




  139, 0x08,
  138, 0x9a
 };
 static const u8 lgdt3303_init_data[] = {
  0x4c, 0x14
 };
 static const u8 flip_1_lgdt3303_init_data[] = {
  0x4c, 0x14,
  0x87, 0xf3
 };
 static const u8 flip_2_lgdt3303_init_data[] = {
  0x4c, 0x14,
  0x87, 0xda
 };
 switch (state->config.demod_chip) {
 case 133:
  chip_name = "LGDT3302";
  err = i2c_write_demod_bytes(state, lgdt3302_init_data,
         sizeof(lgdt3302_init_data));
  break;
 case 132:
  chip_name = "LGDT3303";
  switch (state->config.clock_polarity_flip) {
  case 2:
   err = i2c_write_demod_bytes(state,
          flip_2_lgdt3303_init_data,
          sizeof(flip_2_lgdt3303_init_data));
   break;
  case 1:
   err = i2c_write_demod_bytes(state,
          flip_1_lgdt3303_init_data,
          sizeof(flip_1_lgdt3303_init_data));
   break;
  case 0:
  default:
   err = i2c_write_demod_bytes(state, lgdt3303_init_data,
          sizeof(lgdt3303_init_data));
  }
  break;
 default:
  chip_name = "undefined";
  dev_warn(&state->client->dev,
    "Only LGDT3302 and LGDT3303 are supported chips.\n");
  err = -ENODEV;
 }
 dprintk(state, "Initialized the %s chip\n", chip_name);
 if (err < 0)
  return err;

 p->cnr.len = 1;
 p->cnr.stat[0].scale = FE_SCALE_NOT_AVAILABLE;
 p->block_error.len = 1;
 p->block_error.stat[0].scale = FE_SCALE_NOT_AVAILABLE;
 p->block_count.len = 1;
 p->block_count.stat[0].scale = FE_SCALE_NOT_AVAILABLE;
 state->last_stats_time = 0;

 return lgdt330x_sw_reset(state);
}
