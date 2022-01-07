
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mn88443x_priv {int dummy; } ;
struct dvb_frontend {struct mn88443x_priv* demodulator_priv; } ;


 int mn88443x_s_sleep (struct mn88443x_priv*) ;
 int mn88443x_t_sleep (struct mn88443x_priv*) ;

__attribute__((used)) static int mn88443x_sleep(struct dvb_frontend *fe)
{
 struct mn88443x_priv *chip = fe->demodulator_priv;

 mn88443x_s_sleep(chip);
 mn88443x_t_sleep(chip);

 return 0;
}
