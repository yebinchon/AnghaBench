
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dvb_frontend {struct dib3000_state* demodulator_priv; } ;
struct dib3000_state {int dummy; } ;


 int DIB3000MB_REG_PACKET_ERROR_RATE ;
 int rd (int ) ;

__attribute__((used)) static int dib3000mb_read_unc_blocks(struct dvb_frontend* fe, u32 *unc)
{
 struct dib3000_state* state = fe->demodulator_priv;

 *unc = rd(DIB3000MB_REG_PACKET_ERROR_RATE);
 return 0;
}
