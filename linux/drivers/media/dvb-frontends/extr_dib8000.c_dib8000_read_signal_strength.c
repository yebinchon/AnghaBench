
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u16 ;
struct dvb_frontend {struct dib8000_state* demodulator_priv; } ;
struct dib8000_state {TYPE_2__** fe; } ;
struct TYPE_3__ {int (* read_signal_strength ) (TYPE_2__*,int*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;


 size_t MAX_NUMBER_OF_FRONTENDS ;
 int dib8000_read_word (struct dib8000_state*,int) ;
 int stub1 (TYPE_2__*,int*) ;

__attribute__((used)) static int dib8000_read_signal_strength(struct dvb_frontend *fe, u16 * strength)
{
 struct dib8000_state *state = fe->demodulator_priv;
 u8 index_frontend;
 u16 val;

 *strength = 0;
 for (index_frontend = 1; (index_frontend < MAX_NUMBER_OF_FRONTENDS) && (state->fe[index_frontend] != ((void*)0)); index_frontend++) {
  state->fe[index_frontend]->ops.read_signal_strength(state->fe[index_frontend], &val);
  if (val > 65535 - *strength)
   *strength = 65535;
  else
   *strength += val;
 }

 val = 65535 - dib8000_read_word(state, 390);
 if (val > 65535 - *strength)
  *strength = 65535;
 else
  *strength += val;
 return 0;
}
