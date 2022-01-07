
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct l64781_state {int dummy; } ;
struct dvb_frontend {struct l64781_state* demodulator_priv; } ;


 int l64781_readreg (struct l64781_state*,int) ;

__attribute__((used)) static int l64781_read_ber(struct dvb_frontend* fe, u32* ber)
{
 struct l64781_state* state = fe->demodulator_priv;



 *ber = l64781_readreg (state, 0x39)
     | (l64781_readreg (state, 0x3a) << 8);

 return 0;
}
