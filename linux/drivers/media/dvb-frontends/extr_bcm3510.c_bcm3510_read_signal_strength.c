
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct dvb_frontend {struct bcm3510_state* demodulator_priv; } ;
struct TYPE_2__ {int SIGNAL; } ;
struct bcm3510_state {TYPE_1__ status2; } ;
typedef int s32 ;


 int bcm3510_refresh_state (struct bcm3510_state*) ;

__attribute__((used)) static int bcm3510_read_signal_strength(struct dvb_frontend* fe, u16* strength)
{
 struct bcm3510_state* st = fe->demodulator_priv;
 s32 t;

 bcm3510_refresh_state(st);
 t = st->status2.SIGNAL;

 if (t > 190)
  t = 190;
 if (t < 90)
  t = 90;

 t -= 90;
 t = t * 0xff / 100;

 *strength = (t << 8) | t;
 return 0;
}
