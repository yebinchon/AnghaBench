
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct dib3000_state* demodulator_priv; } ;
struct dib3000_state {int dummy; } ;


 int DIB3000MB_POWER_DOWN ;
 int DIB3000MB_REG_POWER_CONTROL ;
 int deb_info (char*) ;
 int wr (int ,int ) ;

__attribute__((used)) static int dib3000mb_sleep(struct dvb_frontend* fe)
{
 struct dib3000_state* state = fe->demodulator_priv;
 deb_info("dib3000mb is going to bed.\n");
 wr(DIB3000MB_REG_POWER_CONTROL, DIB3000MB_POWER_DOWN);
 return 0;
}
