
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u8 ;
typedef void* u32 ;
struct mxl {TYPE_9__* base; int demod; } ;
struct TYPE_17__ {TYPE_7__* stat; } ;
struct TYPE_15__ {TYPE_5__* stat; } ;
struct TYPE_13__ {TYPE_3__* stat; } ;
struct TYPE_11__ {TYPE_1__* stat; } ;
struct dtv_frontend_properties {int delivery_system; TYPE_8__ post_bit_count; TYPE_6__ post_bit_error; TYPE_4__ pre_bit_count; TYPE_2__ pre_bit_error; } ;
struct dvb_frontend {struct dtv_frontend_properties dtv_property_cache; struct mxl* demodulator_priv; } ;
struct TYPE_18__ {int status_lock; } ;
struct TYPE_16__ {void* uvalue; void* scale; } ;
struct TYPE_14__ {void* uvalue; void* scale; } ;
struct TYPE_12__ {void* uvalue; void* scale; } ;
struct TYPE_10__ {void* uvalue; void* scale; } ;


 void* FE_SCALE_COUNTER ;
 int HYDRA_DEMOD_STATUS_LOCK (struct mxl*,int ) ;
 int HYDRA_DEMOD_STATUS_UNLOCK (struct mxl*,int ) ;
 scalar_t__ HYDRA_DMD_DVBS2_CRC_ERRORS_ADDR_OFFSET ;
 scalar_t__ HYDRA_DMD_DVBS_1ST_CORR_RS_ERRORS_ADDR_OFFSET ;
 scalar_t__ HYDRA_DMD_STATUS_OFFSET (int ) ;



 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int read_register_block (struct mxl*,scalar_t__,int,int *) ;

__attribute__((used)) static int read_ber(struct dvb_frontend *fe)
{
 struct mxl *state = fe->demodulator_priv;
 struct dtv_frontend_properties *p = &fe->dtv_property_cache;
 u32 reg[8];

 mutex_lock(&state->base->status_lock);
 HYDRA_DEMOD_STATUS_LOCK(state, state->demod);
 read_register_block(state,
  (HYDRA_DMD_DVBS_1ST_CORR_RS_ERRORS_ADDR_OFFSET +
   HYDRA_DMD_STATUS_OFFSET(state->demod)),
  (4 * sizeof(u32)),
  (u8 *) &reg[0]);
 HYDRA_DEMOD_STATUS_UNLOCK(state, state->demod);

 switch (p->delivery_system) {
 case 130:
 case 129:
  p->pre_bit_error.stat[0].scale = FE_SCALE_COUNTER;
  p->pre_bit_error.stat[0].uvalue = reg[2];
  p->pre_bit_count.stat[0].scale = FE_SCALE_COUNTER;
  p->pre_bit_count.stat[0].uvalue = reg[3];
  break;
 default:
  break;
 }

 read_register_block(state,
  (HYDRA_DMD_DVBS2_CRC_ERRORS_ADDR_OFFSET +
   HYDRA_DMD_STATUS_OFFSET(state->demod)),
  (7 * sizeof(u32)),
  (u8 *) &reg[0]);

 switch (p->delivery_system) {
 case 130:
 case 129:
  p->post_bit_error.stat[0].scale = FE_SCALE_COUNTER;
  p->post_bit_error.stat[0].uvalue = reg[5];
  p->post_bit_count.stat[0].scale = FE_SCALE_COUNTER;
  p->post_bit_count.stat[0].uvalue = reg[6];
  break;
 case 128:
  p->post_bit_error.stat[0].scale = FE_SCALE_COUNTER;
  p->post_bit_error.stat[0].uvalue = reg[1];
  p->post_bit_count.stat[0].scale = FE_SCALE_COUNTER;
  p->post_bit_count.stat[0].uvalue = reg[2];
  break;
 default:
  break;
 }

 mutex_unlock(&state->base->status_lock);

 return 0;
}
