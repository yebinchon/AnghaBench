
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct dvb_frontend {struct dib9000_state* demodulator_priv; } ;
struct dib9000_state {struct dib9000_state** fe; int component_bus; int tuner_adap; int i2c_master; } ;


 size_t MAX_NUMBER_OF_FRONTENDS ;
 int dibx000_exit_i2c_master (int *) ;
 int dvb_frontend_detach (struct dib9000_state*) ;
 int i2c_del_adapter (int *) ;
 int kfree (struct dib9000_state*) ;

__attribute__((used)) static void dib9000_release(struct dvb_frontend *demod)
{
 struct dib9000_state *st = demod->demodulator_priv;
 u8 index_frontend;

 for (index_frontend = 1; (index_frontend < MAX_NUMBER_OF_FRONTENDS) && (st->fe[index_frontend] != ((void*)0)); index_frontend++)
  dvb_frontend_detach(st->fe[index_frontend]);

 dibx000_exit_i2c_master(&st->i2c_master);

 i2c_del_adapter(&st->tuner_adap);
 i2c_del_adapter(&st->component_bus);
 kfree(st->fe[0]);
 kfree(st);
}
