
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_9__ ;
typedef struct TYPE_31__ TYPE_8__ ;
typedef struct TYPE_30__ TYPE_7__ ;
typedef struct TYPE_29__ TYPE_6__ ;
typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;
typedef struct TYPE_23__ TYPE_16__ ;
typedef struct TYPE_22__ TYPE_15__ ;
typedef struct TYPE_21__ TYPE_14__ ;
typedef struct TYPE_20__ TYPE_13__ ;
typedef struct TYPE_19__ TYPE_12__ ;
typedef struct TYPE_18__ TYPE_11__ ;
typedef struct TYPE_17__ TYPE_10__ ;


typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct TYPE_28__ {TYPE_16__* stat; } ;
struct TYPE_22__ {TYPE_14__* stat; } ;
struct TYPE_20__ {TYPE_12__* stat; } ;
struct TYPE_18__ {TYPE_10__* stat; } ;
struct TYPE_32__ {TYPE_8__* stat; } ;
struct TYPE_30__ {TYPE_6__* stat; } ;
struct TYPE_27__ {TYPE_3__* stat; } ;
struct TYPE_25__ {TYPE_1__* stat; } ;
struct dtv_frontend_properties {TYPE_5__ post_bit_count; TYPE_15__ post_bit_error; TYPE_13__ pre_bit_count; TYPE_11__ pre_bit_error; TYPE_9__ block_count; TYPE_7__ block_error; TYPE_4__ cnr; TYPE_2__ strength; } ;
struct dvb_frontend {struct drxk_state* demodulator_priv; struct dtv_frontend_properties dtv_property_cache; } ;
struct drxk_state {scalar_t__ m_drxk_state; int fe_status; } ;
typedef int s32 ;
struct TYPE_31__ {scalar_t__ uvalue; void* scale; } ;
struct TYPE_29__ {int uvalue; void* scale; } ;
struct TYPE_26__ {int svalue; void* scale; } ;
struct TYPE_24__ {int scale; int uvalue; } ;
struct TYPE_23__ {scalar_t__ uvalue; void* scale; } ;
struct TYPE_21__ {scalar_t__ uvalue; void* scale; } ;
struct TYPE_19__ {int uvalue; void* scale; } ;
struct TYPE_17__ {int uvalue; void* scale; } ;


 scalar_t__ DEMOD_LOCK ;
 scalar_t__ DRXK_NO_DEV ;
 scalar_t__ DRXK_UNINITIALIZED ;
 int EAGAIN ;
 int ENODEV ;
 scalar_t__ FEC_LOCK ;
 int FEC_RS_MEASUREMENT_PERIOD__A ;
 int FEC_RS_MEASUREMENT_PRESCALE__A ;
 int FEC_RS_NR_BIT_ERRORS__A ;
 void* FE_SCALE_COUNTER ;
 void* FE_SCALE_DECIBEL ;
 void* FE_SCALE_NOT_AVAILABLE ;
 int FE_SCALE_RELATIVE ;
 scalar_t__ MPEG_LOCK ;
 int OFDM_EC_VD_ERR_BIT_CNT__A ;
 int OFDM_EC_VD_IN_BIT_CNT__A ;
 int SCU_RAM_FEC_ACCUM_PKT_FAILURES__A ;
 int get_lock_status (struct drxk_state*,scalar_t__*) ;
 int get_signal_to_noise (struct drxk_state*,int*) ;
 int get_strength (struct drxk_state*,int *) ;
 int read16 (struct drxk_state*,int ,scalar_t__*) ;
 int write16 (struct drxk_state*,int ,int ) ;

__attribute__((used)) static int drxk_get_stats(struct dvb_frontend *fe)
{
 struct dtv_frontend_properties *c = &fe->dtv_property_cache;
 struct drxk_state *state = fe->demodulator_priv;
 int status;
 u32 stat;
 u16 reg16;
 u32 post_bit_count;
 u32 post_bit_err_count;
 u32 post_bit_error_scale;
 u32 pre_bit_err_count;
 u32 pre_bit_count;
 u32 pkt_count;
 u32 pkt_error_count;
 s32 cnr;

 if (state->m_drxk_state == DRXK_NO_DEV)
  return -ENODEV;
 if (state->m_drxk_state == DRXK_UNINITIALIZED)
  return -EAGAIN;


 state->fe_status = 0;
 get_lock_status(state, &stat);
 if (stat == MPEG_LOCK)
  state->fe_status |= 0x1f;
 if (stat == FEC_LOCK)
  state->fe_status |= 0x0f;
 if (stat == DEMOD_LOCK)
  state->fe_status |= 0x07;




 get_strength(state, &c->strength.stat[0].uvalue);
 c->strength.stat[0].scale = FE_SCALE_RELATIVE;


 if (stat >= DEMOD_LOCK) {
  get_signal_to_noise(state, &cnr);
  c->cnr.stat[0].svalue = cnr * 100;
  c->cnr.stat[0].scale = FE_SCALE_DECIBEL;
 } else {
  c->cnr.stat[0].scale = FE_SCALE_NOT_AVAILABLE;
 }

 if (stat < FEC_LOCK) {
  c->block_error.stat[0].scale = FE_SCALE_NOT_AVAILABLE;
  c->block_count.stat[0].scale = FE_SCALE_NOT_AVAILABLE;
  c->pre_bit_error.stat[0].scale = FE_SCALE_NOT_AVAILABLE;
  c->pre_bit_count.stat[0].scale = FE_SCALE_NOT_AVAILABLE;
  c->post_bit_error.stat[0].scale = FE_SCALE_NOT_AVAILABLE;
  c->post_bit_count.stat[0].scale = FE_SCALE_NOT_AVAILABLE;
  return 0;
 }
 status = read16(state, OFDM_EC_VD_ERR_BIT_CNT__A, &reg16);
 if (status < 0)
  goto error;
 pre_bit_err_count = reg16;

 status = read16(state, OFDM_EC_VD_IN_BIT_CNT__A , &reg16);
 if (status < 0)
  goto error;
 pre_bit_count = reg16;


 status = read16(state, FEC_RS_NR_BIT_ERRORS__A, &reg16);
 if (status < 0)
  goto error;
 post_bit_err_count = reg16;

 status = read16(state, FEC_RS_MEASUREMENT_PRESCALE__A, &reg16);
 if (status < 0)
  goto error;
 post_bit_error_scale = reg16;

 status = read16(state, FEC_RS_MEASUREMENT_PERIOD__A, &reg16);
 if (status < 0)
  goto error;
 pkt_count = reg16;

 status = read16(state, SCU_RAM_FEC_ACCUM_PKT_FAILURES__A, &reg16);
 if (status < 0)
  goto error;
 pkt_error_count = reg16;
 write16(state, SCU_RAM_FEC_ACCUM_PKT_FAILURES__A, 0);

 post_bit_err_count *= post_bit_error_scale;

 post_bit_count = pkt_count * 204 * 8;


 c->block_error.stat[0].scale = FE_SCALE_COUNTER;
 c->block_error.stat[0].uvalue += pkt_error_count;
 c->block_count.stat[0].scale = FE_SCALE_COUNTER;
 c->block_count.stat[0].uvalue += pkt_count;

 c->pre_bit_error.stat[0].scale = FE_SCALE_COUNTER;
 c->pre_bit_error.stat[0].uvalue += pre_bit_err_count;
 c->pre_bit_count.stat[0].scale = FE_SCALE_COUNTER;
 c->pre_bit_count.stat[0].uvalue += pre_bit_count;

 c->post_bit_error.stat[0].scale = FE_SCALE_COUNTER;
 c->post_bit_error.stat[0].uvalue += post_bit_err_count;
 c->post_bit_count.stat[0].scale = FE_SCALE_COUNTER;
 c->post_bit_count.stat[0].uvalue += post_bit_count;

error:
 return status;
}
