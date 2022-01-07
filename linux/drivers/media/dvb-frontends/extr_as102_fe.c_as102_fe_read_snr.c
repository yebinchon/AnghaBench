
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct dvb_frontend {struct as102_state* demodulator_priv; } ;
struct TYPE_2__ {int mer; } ;
struct as102_state {TYPE_1__ demod_stats; } ;



__attribute__((used)) static int as102_fe_read_snr(struct dvb_frontend *fe, u16 *snr)
{
 struct as102_state *state = fe->demodulator_priv;

 *snr = state->demod_stats.mer;

 return 0;
}
