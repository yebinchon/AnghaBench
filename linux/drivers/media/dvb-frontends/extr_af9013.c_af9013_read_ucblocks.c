
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dvb_frontend {struct af9013_state* demodulator_priv; } ;
struct af9013_state {int dvbv3_ucblocks; } ;



__attribute__((used)) static int af9013_read_ucblocks(struct dvb_frontend *fe, u32 *ucblocks)
{
 struct af9013_state *state = fe->demodulator_priv;

 *ucblocks = state->dvbv3_ucblocks;

 return 0;
}
