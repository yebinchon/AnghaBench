
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt352_state {int dummy; } ;
struct dvb_frontend {struct mt352_state* demodulator_priv; } ;


 int RS_UBC_0 ;
 int RS_UBC_1 ;
 int mt352_read_register (struct mt352_state*,int ) ;

__attribute__((used)) static int mt352_read_ucblocks(struct dvb_frontend* fe, u32* ucblocks)
{
 struct mt352_state* state = fe->demodulator_priv;

 *ucblocks = (mt352_read_register (state, RS_UBC_1) << 8) |
      (mt352_read_register (state, RS_UBC_0));

 return 0;
}
