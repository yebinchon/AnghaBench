
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct si2165_state {TYPE_3__* client; scalar_t__ ber_prev; } ;
struct TYPE_14__ {TYPE_6__* stat; } ;
struct TYPE_12__ {TYPE_4__* stat; } ;
struct TYPE_9__ {TYPE_1__* stat; } ;
struct dtv_frontend_properties {int delivery_system; TYPE_7__ post_bit_count; TYPE_5__ post_bit_error; TYPE_2__ cnr; } ;
struct dvb_frontend {struct dtv_frontend_properties dtv_property_cache; struct si2165_state* demodulator_priv; } ;
typedef enum fe_status { ____Placeholder_fe_status } fe_status ;
struct TYPE_13__ {void* scale; scalar_t__ uvalue; } ;
struct TYPE_11__ {scalar_t__ scale; int uvalue; } ;
struct TYPE_10__ {int dev; } ;
struct TYPE_8__ {int svalue; scalar_t__ scale; } ;


 int FE_HAS_CARRIER ;
 int FE_HAS_LOCK ;
 int FE_HAS_SIGNAL ;
 int FE_HAS_SYNC ;
 int FE_HAS_VITERBI ;
 void* FE_SCALE_COUNTER ;
 scalar_t__ FE_SCALE_DECIBEL ;
 scalar_t__ FE_SCALE_NOT_AVAILABLE ;
 int REG_BER_AVAIL ;
 int REG_BER_BIT ;
 int REG_BER_RST ;
 int REG_CHECK_SIGNAL ;
 int REG_C_N ;
 int REG_FEC_LOCK ;
 int REG_PS_LOCK ;
 scalar_t__ STATISTICS_PERIOD_BIT_COUNT ;


 int dev_dbg (int *,char*,int,scalar_t__) ;
 scalar_t__ intlog10 (int) ;
 int si2165_readreg24 (struct si2165_state*,int ,int*) ;
 int si2165_readreg8 (struct si2165_state*,int ,int*) ;
 int si2165_writereg8 (struct si2165_state*,int ,int) ;

__attribute__((used)) static int si2165_read_status(struct dvb_frontend *fe, enum fe_status *status)
{
 int ret;
 u8 u8tmp;
 u32 u32tmp;
 struct si2165_state *state = fe->demodulator_priv;
 struct dtv_frontend_properties *c = &fe->dtv_property_cache;
 u32 delsys = c->delivery_system;

 *status = 0;

 switch (delsys) {
 case 128:

  ret = si2165_readreg8(state, REG_CHECK_SIGNAL, &u8tmp);
  if (ret < 0)
   return ret;
  switch (u8tmp & 0x3) {
  case 0:
  case 1:
   break;
  case 2:
   *status |= FE_HAS_SIGNAL | FE_HAS_CARRIER;
   break;
  }
  break;
 case 129:

  ret = si2165_readreg8(state, REG_PS_LOCK, &u8tmp);
  if (ret < 0)
   return ret;
  if (u8tmp & 0x01) {
   *status |= FE_HAS_SIGNAL;
   *status |= FE_HAS_CARRIER;
   *status |= FE_HAS_VITERBI;
   *status |= FE_HAS_SYNC;
  }
  break;
 }


 ret = si2165_readreg8(state, REG_FEC_LOCK, &u8tmp);
 if (ret < 0)
  return ret;
 if (u8tmp & 0x01) {
  *status |= FE_HAS_SIGNAL;
  *status |= FE_HAS_CARRIER;
  *status |= FE_HAS_VITERBI;
  *status |= FE_HAS_SYNC;
  *status |= FE_HAS_LOCK;
 }


 if (delsys == 129 && *status & FE_HAS_VITERBI) {
  ret = si2165_readreg24(state, REG_C_N, &u32tmp);
  if (ret < 0)
   return ret;
  u32tmp = (1000 * 10 * (121210686 - (u64)intlog10(u32tmp)))
    >> 24;
  c->cnr.stat[0].scale = FE_SCALE_DECIBEL;
  c->cnr.stat[0].svalue = u32tmp;
 } else
  c->cnr.stat[0].scale = FE_SCALE_NOT_AVAILABLE;


 if (*status & FE_HAS_VITERBI) {
  if (c->post_bit_error.stat[0].scale == FE_SCALE_NOT_AVAILABLE) {

   ret = si2165_writereg8(state, REG_BER_RST, 0x01);
   if (ret < 0)
    return ret;


   c->post_bit_error.stat[0].scale = FE_SCALE_COUNTER;
   c->post_bit_count.stat[0].scale = FE_SCALE_COUNTER;
   c->post_bit_error.stat[0].uvalue = 0;
   c->post_bit_count.stat[0].uvalue = 0;





   state->ber_prev = 0;

  } else {
   ret = si2165_readreg8(state, REG_BER_AVAIL, &u8tmp);
   if (ret < 0)
    return ret;

   if (u8tmp & 1) {
    u32 biterrcnt;

    ret = si2165_readreg24(state, REG_BER_BIT,
       &biterrcnt);
    if (ret < 0)
     return ret;

    c->post_bit_error.stat[0].uvalue +=
     biterrcnt;
    c->post_bit_count.stat[0].uvalue +=
     STATISTICS_PERIOD_BIT_COUNT;


    ret = si2165_writereg8(state,
       REG_BER_RST, 0x01);
    if (ret < 0)
     return ret;

    dev_dbg(&state->client->dev,
     "post_bit_error=%u post_bit_count=%u\n",
     biterrcnt, STATISTICS_PERIOD_BIT_COUNT);
   }
  }
 } else {
  c->post_bit_error.stat[0].scale = FE_SCALE_NOT_AVAILABLE;
  c->post_bit_count.stat[0].scale = FE_SCALE_NOT_AVAILABLE;
 }

 return 0;
}
