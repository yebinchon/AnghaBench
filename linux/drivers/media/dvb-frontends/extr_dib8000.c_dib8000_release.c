
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct dvb_frontend {struct dib8000_state* demodulator_priv; } ;
struct dib8000_state {struct dib8000_state** fe; int dib8096p_tuner_adap; int i2c_master; } ;


 size_t MAX_NUMBER_OF_FRONTENDS ;
 int dibx000_exit_i2c_master (int *) ;
 int dvb_frontend_detach (struct dib8000_state*) ;
 int i2c_del_adapter (int *) ;
 int kfree (struct dib8000_state*) ;

__attribute__((used)) static void dib8000_release(struct dvb_frontend *fe)
{
 struct dib8000_state *st = fe->demodulator_priv;
 u8 index_frontend;

 for (index_frontend = 1; (index_frontend < MAX_NUMBER_OF_FRONTENDS) && (st->fe[index_frontend] != ((void*)0)); index_frontend++)
  dvb_frontend_detach(st->fe[index_frontend]);

 dibx000_exit_i2c_master(&st->i2c_master);
 i2c_del_adapter(&st->dib8096p_tuner_adap);
 kfree(st->fe[0]);
 kfree(st);
}
