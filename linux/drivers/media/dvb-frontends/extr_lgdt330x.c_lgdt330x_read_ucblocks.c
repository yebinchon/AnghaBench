
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lgdt330x_state {int ucblocks; } ;
struct dvb_frontend {struct lgdt330x_state* demodulator_priv; } ;



__attribute__((used)) static int lgdt330x_read_ucblocks(struct dvb_frontend *fe, u32 *ucblocks)
{
 struct lgdt330x_state *state = fe->demodulator_priv;

 *ucblocks = state->ucblocks;

 return 0;
}
