
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dvb_frontend {struct dib3000_state* demodulator_priv; } ;
struct dib3000_state {int dummy; } ;


 int DIB3000MB_REG_BER_LSB ;
 int DIB3000MB_REG_BER_MSB ;
 int rd (int ) ;

__attribute__((used)) static int dib3000mb_read_ber(struct dvb_frontend* fe, u32 *ber)
{
 struct dib3000_state* state = fe->demodulator_priv;

 *ber = ((rd(DIB3000MB_REG_BER_MSB) << 16) | rd(DIB3000MB_REG_BER_LSB));
 return 0;
}
