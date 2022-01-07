
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct lgs8gl5_state {int dummy; } ;
struct dvb_frontend {struct lgs8gl5_state* demodulator_priv; } ;


 int REG_STRENGTH ;
 int REG_STRENGTH_MASK ;
 int lgs8gl5_read_reg (struct lgs8gl5_state*,int ) ;

__attribute__((used)) static int
lgs8gl5_read_signal_strength(struct dvb_frontend *fe, u16 *signal_strength)
{
 struct lgs8gl5_state *state = fe->demodulator_priv;
 u8 level = lgs8gl5_read_reg(state, REG_STRENGTH);
 *signal_strength = (level & REG_STRENGTH_MASK) << 8;

 return 0;
}
