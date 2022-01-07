
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct stv {int tsgeneral; int tscfgh; int tsspeed; int i2crpt; scalar_t__ single; scalar_t__ started; int receive_mode; } ;


 int EINVAL ;
 int ENODEV ;
 int RCVMODE_NONE ;
 int RSTV0910_CFGEXT ;
 int RSTV0910_GENCFG ;
 int RSTV0910_I2CCFG ;
 int RSTV0910_MID ;
 int RSTV0910_OUTCFG ;
 int RSTV0910_P1_CAR3CFG ;
 int RSTV0910_P1_DMDCFG4 ;
 int RSTV0910_P1_I2CRPT ;
 int RSTV0910_P1_TMGCFG2 ;
 int RSTV0910_P1_TNRCFG2 ;
 int RSTV0910_P1_TSCFGH ;
 int RSTV0910_P1_TSCFGL ;
 int RSTV0910_P1_TSCFGM ;
 int RSTV0910_P1_TSINSDELL ;
 int RSTV0910_P1_TSINSDELM ;
 int RSTV0910_P1_TSPIDFLT1 ;
 int RSTV0910_P1_TSSPEED ;
 int RSTV0910_P2_CAR3CFG ;
 int RSTV0910_P2_DMDCFG4 ;
 int RSTV0910_P2_I2CRPT ;
 int RSTV0910_P2_TMGCFG2 ;
 int RSTV0910_P2_TNRCFG2 ;
 int RSTV0910_P2_TSCFGH ;
 int RSTV0910_P2_TSCFGL ;
 int RSTV0910_P2_TSCFGM ;
 int RSTV0910_P2_TSINSDELL ;
 int RSTV0910_P2_TSINSDELM ;
 int RSTV0910_P2_TSPIDFLT1 ;
 int RSTV0910_P2_TSSPEED ;
 int RSTV0910_PADCFG ;
 int RSTV0910_SYNTCTRL ;
 int RSTV0910_TSGENERAL ;
 int RSTV0910_TSTRES0 ;
 int init_diseqc (struct stv*) ;
 scalar_t__ read_reg (struct stv*,int ,int*) ;
 int set_mclock (struct stv*,int) ;
 int write_reg (struct stv*,int ,int) ;

__attribute__((used)) static int probe(struct stv *state)
{
 u8 id;

 state->receive_mode = RCVMODE_NONE;
 state->started = 0;

 if (read_reg(state, RSTV0910_MID, &id) < 0)
  return -ENODEV;

 if (id != 0x51)
  return -EINVAL;


 write_reg(state, RSTV0910_P1_I2CRPT, 0x24);

 write_reg(state, RSTV0910_P2_I2CRPT, 0x24);

 write_reg(state, RSTV0910_I2CCFG, 0x88);

 write_reg(state, RSTV0910_OUTCFG, 0x00);
 write_reg(state, RSTV0910_PADCFG, 0x05);
 write_reg(state, RSTV0910_SYNTCTRL, 0x02);
 write_reg(state, RSTV0910_TSGENERAL, state->tsgeneral);
 write_reg(state, RSTV0910_CFGEXT, 0x02);

 if (state->single)
  write_reg(state, RSTV0910_GENCFG, 0x14);
 else
  write_reg(state, RSTV0910_GENCFG, 0x15);

 write_reg(state, RSTV0910_P1_TNRCFG2, 0x02);
 write_reg(state, RSTV0910_P2_TNRCFG2, 0x82);

 write_reg(state, RSTV0910_P1_CAR3CFG, 0x02);
 write_reg(state, RSTV0910_P2_CAR3CFG, 0x02);
 write_reg(state, RSTV0910_P1_DMDCFG4, 0x04);
 write_reg(state, RSTV0910_P2_DMDCFG4, 0x04);

 write_reg(state, RSTV0910_TSTRES0, 0x80);
 write_reg(state, RSTV0910_TSTRES0, 0x00);

 write_reg(state, RSTV0910_P1_TSPIDFLT1, 0x00);
 write_reg(state, RSTV0910_P2_TSPIDFLT1, 0x00);

 write_reg(state, RSTV0910_P1_TMGCFG2, 0x80);
 write_reg(state, RSTV0910_P2_TMGCFG2, 0x80);

 set_mclock(state, 135000000);


 write_reg(state, RSTV0910_P1_TSCFGH, state->tscfgh | 0x01);
 write_reg(state, RSTV0910_P1_TSCFGH, state->tscfgh);
 write_reg(state, RSTV0910_P1_TSCFGM, 0xC0);
 write_reg(state, RSTV0910_P1_TSCFGL, 0x20);

 write_reg(state, RSTV0910_P1_TSSPEED, state->tsspeed);

 write_reg(state, RSTV0910_P2_TSCFGH, state->tscfgh | 0x01);
 write_reg(state, RSTV0910_P2_TSCFGH, state->tscfgh);
 write_reg(state, RSTV0910_P2_TSCFGM, 0xC0);
 write_reg(state, RSTV0910_P2_TSCFGL, 0x20);

 write_reg(state, RSTV0910_P2_TSSPEED, state->tsspeed);


 write_reg(state, RSTV0910_P1_TSCFGH, state->tscfgh | 0x01);
 write_reg(state, RSTV0910_P2_TSCFGH, state->tscfgh | 0x01);
 write_reg(state, RSTV0910_P1_TSCFGH, state->tscfgh);
 write_reg(state, RSTV0910_P2_TSCFGH, state->tscfgh);

 write_reg(state, RSTV0910_P1_I2CRPT, state->i2crpt);
 write_reg(state, RSTV0910_P2_I2CRPT, state->i2crpt);

 write_reg(state, RSTV0910_P1_TSINSDELM, 0x17);
 write_reg(state, RSTV0910_P1_TSINSDELL, 0xff);

 write_reg(state, RSTV0910_P2_TSINSDELM, 0x17);
 write_reg(state, RSTV0910_P2_TSINSDELL, 0xff);

 init_diseqc(state);
 return 0;
}
