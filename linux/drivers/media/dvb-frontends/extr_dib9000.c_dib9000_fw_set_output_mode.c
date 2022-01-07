
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct dvb_frontend {struct dib9000_state* demodulator_priv; } ;
struct TYPE_4__ {int output_mpeg2_in_188_bytes; } ;
struct TYPE_5__ {TYPE_1__ cfg; } ;
struct TYPE_6__ {TYPE_2__ d9; } ;
struct dib9000_state {TYPE_3__ chip; int * fe; } ;


 int EINVAL ;






 int OUT_MSG_SET_OUTPUT_MODE ;
 int dib9000_mbx_send (struct dib9000_state*,int ,int*,int) ;
 int dib9000_read_word (struct dib9000_state*,int) ;
 int dib9000_write_word (struct dib9000_state*,int,int) ;
 int dprintk (char*,struct dvb_frontend*,...) ;
 int to_fw_output_mode (int) ;

__attribute__((used)) static int dib9000_fw_set_output_mode(struct dvb_frontend *fe, int mode)
{
 struct dib9000_state *state = fe->demodulator_priv;
 u16 outreg, smo_mode;

 dprintk("setting output mode for demod %p to %d\n", fe, mode);

 switch (mode) {
 case 129:
  outreg = (1 << 10);
  break;
 case 130:
  outreg = (1 << 10) | (1 << 6);
  break;
 case 128:
  outreg = (1 << 10) | (2 << 6) | (0 << 1);
  break;
 case 133:
  outreg = (1 << 10) | (4 << 6);
  break;
 case 131:
  outreg = (1 << 10) | (5 << 6);
  break;
 case 132:
  outreg = 0;
  break;
 default:
  dprintk("Unhandled output_mode passed to be set for demod %p\n", &state->fe[0]);
  return -EINVAL;
 }

 dib9000_write_word(state, 1795, outreg);

 switch (mode) {
 case 129:
 case 130:
 case 128:
 case 131:
  smo_mode = (dib9000_read_word(state, 295) & 0x0010) | (1 << 1);
  if (state->chip.d9.cfg.output_mpeg2_in_188_bytes)
   smo_mode |= (1 << 5);
  dib9000_write_word(state, 295, smo_mode);
  break;
 }

 outreg = to_fw_output_mode(mode);
 return dib9000_mbx_send(state, OUT_MSG_SET_OUTPUT_MODE, &outreg, 1);
}
