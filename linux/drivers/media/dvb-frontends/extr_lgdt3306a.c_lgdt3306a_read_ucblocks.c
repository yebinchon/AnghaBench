
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lgdt3306a_state {int dummy; } ;
struct dvb_frontend {struct lgdt3306a_state* demodulator_priv; } ;


 int dbg_info (char*,int ) ;
 int read_reg (struct lgdt3306a_state*,int) ;

__attribute__((used)) static int lgdt3306a_read_ucblocks(struct dvb_frontend *fe, u32 *ucblocks)
{
 struct lgdt3306a_state *state = fe->demodulator_priv;

 *ucblocks = 0;



 *ucblocks = read_reg(state, 0x00f4);
 dbg_info("ucblocks=%u\n", *ucblocks);


 return 0;
}
