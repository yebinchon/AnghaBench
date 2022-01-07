
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt352_state {int dummy; } ;
struct dvb_frontend {struct mt352_state* demodulator_priv; } ;


 int RS_ERR_CNT_0 ;
 int RS_ERR_CNT_1 ;
 int RS_ERR_CNT_2 ;
 int mt352_read_register (struct mt352_state*,int ) ;

__attribute__((used)) static int mt352_read_ber(struct dvb_frontend* fe, u32* ber)
{
 struct mt352_state* state = fe->demodulator_priv;

 *ber = (mt352_read_register (state, RS_ERR_CNT_2) << 16) |
        (mt352_read_register (state, RS_ERR_CNT_1) << 8) |
        (mt352_read_register (state, RS_ERR_CNT_0));

 return 0;
}
