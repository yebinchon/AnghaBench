
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct mxl {int i2cdev; TYPE_1__* base; int demod; } ;
struct dvb_frontend {struct mxl* demodulator_priv; } ;
struct dtv_frontend_properties {int symbol_rate; int frequency; int delivery_system; int rolloff; int modulation; int pilot; int fec_inner; } ;
typedef enum MXL_HYDRA_ROLLOFF_E { ____Placeholder_MXL_HYDRA_ROLLOFF_E } MXL_HYDRA_ROLLOFF_E ;
typedef enum MXL_HYDRA_PILOTS_E { ____Placeholder_MXL_HYDRA_PILOTS_E } MXL_HYDRA_PILOTS_E ;
typedef enum MXL_HYDRA_MODULATION_E { ____Placeholder_MXL_HYDRA_MODULATION_E } MXL_HYDRA_MODULATION_E ;
struct TYPE_2__ {int status_lock; } ;


 size_t DMD_DVBS2_PILOT_ON_OFF_ADDR ;
 size_t DMD_FEC_CODE_RATE_ADDR ;
 size_t DMD_MODULATION_SCHEME_ADDR ;
 size_t DMD_SPECTRUM_ROLL_OFF_ADDR ;
 size_t DMD_STANDARD_ADDR ;
 size_t DMD_SYMBOL_RATE_ADDR ;
 int EINVAL ;
 int HYDRA_DEMOD_STATUS_LOCK (struct mxl*,int ) ;
 int HYDRA_DEMOD_STATUS_UNLOCK (struct mxl*,int ) ;
 scalar_t__ HYDRA_DMD_STANDARD_ADDR_OFFSET ;
 scalar_t__ HYDRA_DMD_STATUS_CENTER_FREQ_IN_KHZ_ADDR ;
 scalar_t__ HYDRA_DMD_STATUS_OFFSET (int ) ;
 int MXL_DEMOD_CHAN_PARAMS_BUFF_SIZE ;







 int PILOT_OFF ;
 int PILOT_ON ;
 int PSK_8 ;
 int QPSK ;
 int ROLLOFF_20 ;
 int ROLLOFF_25 ;
 int ROLLOFF_35 ;



 int conv_fec (int) ;
 int dev_dbg (int ,char*,int,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int read_register_block (struct mxl*,scalar_t__,int,int *) ;

__attribute__((used)) static int get_frontend(struct dvb_frontend *fe,
   struct dtv_frontend_properties *p)
{
 struct mxl *state = fe->demodulator_priv;
 u32 reg_data[MXL_DEMOD_CHAN_PARAMS_BUFF_SIZE];
 u32 freq;

 mutex_lock(&state->base->status_lock);
 HYDRA_DEMOD_STATUS_LOCK(state, state->demod);
 read_register_block(state,
  (HYDRA_DMD_STANDARD_ADDR_OFFSET +
  HYDRA_DMD_STATUS_OFFSET(state->demod)),
  (MXL_DEMOD_CHAN_PARAMS_BUFF_SIZE * 4),
  (u8 *) &reg_data[0]);

 read_register_block(state,
  (HYDRA_DMD_STATUS_CENTER_FREQ_IN_KHZ_ADDR +
  HYDRA_DMD_STATUS_OFFSET(state->demod)),
  (4),
  (u8 *) &freq);
 HYDRA_DEMOD_STATUS_UNLOCK(state, state->demod);
 mutex_unlock(&state->base->status_lock);

 dev_dbg(state->i2cdev, "freq=%u delsys=%u srate=%u\n",
  freq * 1000, reg_data[DMD_STANDARD_ADDR],
  reg_data[DMD_SYMBOL_RATE_ADDR]);
 p->symbol_rate = reg_data[DMD_SYMBOL_RATE_ADDR];
 p->frequency = freq;
 p->fec_inner = conv_fec(reg_data[DMD_FEC_CODE_RATE_ADDR]);
 switch (p->delivery_system) {
 case 130:
  break;
 case 128:
  switch ((enum MXL_HYDRA_PILOTS_E)
   reg_data[DMD_DVBS2_PILOT_ON_OFF_ADDR]) {
  case 135:
   p->pilot = PILOT_OFF;
   break;
  case 134:
   p->pilot = PILOT_ON;
   break;
  default:
   break;
  }

 case 129:
  switch ((enum MXL_HYDRA_MODULATION_E)
   reg_data[DMD_MODULATION_SCHEME_ADDR]) {
  case 136:
   p->modulation = QPSK;
   break;
  case 137:
   p->modulation = PSK_8;
   break;
  default:
   break;
  }
  switch ((enum MXL_HYDRA_ROLLOFF_E)
   reg_data[DMD_SPECTRUM_ROLL_OFF_ADDR]) {
  case 133:
   p->rolloff = ROLLOFF_20;
   break;
  case 131:
   p->rolloff = ROLLOFF_35;
   break;
  case 132:
   p->rolloff = ROLLOFF_25;
   break;
  default:
   break;
  }
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
