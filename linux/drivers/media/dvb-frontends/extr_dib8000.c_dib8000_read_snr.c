
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;
typedef int u16 ;
struct dvb_frontend {struct dib8000_state* demodulator_priv; } ;
struct dib8000_state {struct dvb_frontend** fe; } ;


 size_t MAX_NUMBER_OF_FRONTENDS ;
 int dib8000_get_snr (struct dvb_frontend*) ;
 int intlog10 (int) ;

__attribute__((used)) static int dib8000_read_snr(struct dvb_frontend *fe, u16 * snr)
{
 struct dib8000_state *state = fe->demodulator_priv;
 u8 index_frontend;
 u32 snr_master;

 snr_master = dib8000_get_snr(fe);
 for (index_frontend = 1; (index_frontend < MAX_NUMBER_OF_FRONTENDS) && (state->fe[index_frontend] != ((void*)0)); index_frontend++)
  snr_master += dib8000_get_snr(state->fe[index_frontend]);

 if ((snr_master >> 16) != 0) {
  snr_master = 10*intlog10(snr_master>>16);
  *snr = snr_master / ((1 << 24) / 10);
 }
 else
  *snr = 0;

 return 0;
}
