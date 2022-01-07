
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct stv0367_state {int dummy; } ;
struct dvb_frontend {struct stv0367_state* demodulator_priv; } ;


 int F367TER_CHCSNR ;
 int F367TER_IDENTIFICATIONREG ;
 int stv0367_readbits (struct stv0367_state*,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static u32 stv0367ter_snr_readreg(struct dvb_frontend *fe)
{
 struct stv0367_state *state = fe->demodulator_priv;
 u32 snru32 = 0;
 int cpt = 0;
 u8 cut = stv0367_readbits(state, F367TER_IDENTIFICATIONREG);

 while (cpt < 10) {
  usleep_range(2000, 3000);
  if (cut == 0x50)
   snru32 += stv0367_readbits(state, F367TER_CHCSNR) / 4;
  else
   snru32 += 125 * stv0367_readbits(state, F367TER_CHCSNR);

  cpt++;
 }
 snru32 /= 10;

 return snru32;
}
