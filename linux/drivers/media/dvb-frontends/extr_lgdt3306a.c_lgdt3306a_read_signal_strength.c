
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct lgdt3306a_state {int current_modulation; int snr; } ;
struct TYPE_2__ {int (* read_snr ) (struct dvb_frontend*,scalar_t__*) ;} ;
struct dvb_frontend {TYPE_1__ ops; struct lgdt3306a_state* demodulator_priv; } ;


 int EINVAL ;




 int dbg_info (char*,scalar_t__) ;
 scalar_t__ lg_chkerr (int) ;
 int lgdt3306a_read_reg (struct lgdt3306a_state*,int,int*) ;
 int stub1 (struct dvb_frontend*,scalar_t__*) ;

__attribute__((used)) static int lgdt3306a_read_signal_strength(struct dvb_frontend *fe,
      u16 *strength)
{



 struct lgdt3306a_state *state = fe->demodulator_priv;
 u8 val;
 u16 snr;
 int ret;
 u32 ref_snr;
 u32 str;

 *strength = 0;

 switch (state->current_modulation) {
 case 128:
   ref_snr = 1600;
   break;
 case 130:
 case 131:
 case 129:

  ret = lgdt3306a_read_reg(state, 0x00a6, &val);
  if (lg_chkerr(ret))
   goto fail;

  if(val & 0x04)
   ref_snr = 2800;
  else
   ref_snr = 2200;
  break;
 default:
  return -EINVAL;
 }

 ret = fe->ops.read_snr(fe, &snr);
 if (lg_chkerr(ret))
  goto fail;

 if (state->snr <= (ref_snr - 100))
  str = 0;
 else if (state->snr <= ref_snr)
  str = (0xffff * 65) / 100;
 else {
  str = state->snr - ref_snr;
  str /= 50;
  str += 78;
  if (str > 100)
   str = 100;
  str = (0xffff * str) / 100;
 }
 *strength = (u16)str;
 dbg_info("strength=%u\n", *strength);

fail:
 return ret;
}
