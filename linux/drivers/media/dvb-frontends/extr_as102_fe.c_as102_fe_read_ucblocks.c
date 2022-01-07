
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct dvb_frontend {struct as102_state* demodulator_priv; } ;
struct TYPE_2__ {int bad_frame_count; scalar_t__ has_started; } ;
struct as102_state {TYPE_1__ demod_stats; } ;



__attribute__((used)) static int as102_fe_read_ucblocks(struct dvb_frontend *fe, u32 *ucblocks)
{
 struct as102_state *state = fe->demodulator_priv;

 if (state->demod_stats.has_started)
  *ucblocks = state->demod_stats.bad_frame_count;
 else
  *ucblocks = 0;

 return 0;
}
