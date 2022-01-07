
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct stv {int tscfgh; int receive_mode; scalar_t__ started; scalar_t__ regoff; } ;


 int RCVMODE_NONE ;
 scalar_t__ RSTV0910_P2_AGC2O ;
 scalar_t__ RSTV0910_P2_DMDISTATE ;
 scalar_t__ RSTV0910_P2_PDELCTRL1 ;
 scalar_t__ RSTV0910_P2_TSCFGH ;
 int read_reg (struct stv*,scalar_t__,int*) ;
 int write_reg (struct stv*,scalar_t__,int) ;

__attribute__((used)) static int stop(struct stv *state)
{
 if (state->started) {
  u8 tmp;

  write_reg(state, RSTV0910_P2_TSCFGH + state->regoff,
     state->tscfgh | 0x01);
  read_reg(state, RSTV0910_P2_PDELCTRL1 + state->regoff, &tmp);
  tmp &= ~0x01;
  write_reg(state, RSTV0910_P2_PDELCTRL1 + state->regoff, tmp);

  write_reg(state, RSTV0910_P2_AGC2O + state->regoff, 0x5B);

  write_reg(state, RSTV0910_P2_DMDISTATE + state->regoff, 0x5c);
  state->started = 0;
 }
 state->receive_mode = RCVMODE_NONE;
 return 0;
}
