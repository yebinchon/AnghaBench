
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stv0900_state {int demod; struct stv0900_internal* internal; } ;
struct stv0900_internal {int dummy; } ;
struct dvb_frontend {struct stv0900_state* demodulator_priv; } ;


 int stv0900_get_ber (struct stv0900_internal*,int ) ;

__attribute__((used)) static int stv0900_read_ber(struct dvb_frontend *fe, u32 *ber)
{
 struct stv0900_state *state = fe->demodulator_priv;
 struct stv0900_internal *internal = state->internal;

 *ber = stv0900_get_ber(internal, state->demod);

 return 0;
}
