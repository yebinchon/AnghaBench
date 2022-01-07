
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dvb_frontend {struct ascot2e_priv* tuner_priv; } ;
struct ascot2e_priv {int frequency; } ;



__attribute__((used)) static int ascot2e_get_frequency(struct dvb_frontend *fe, u32 *frequency)
{
 struct ascot2e_priv *priv = fe->tuner_priv;

 *frequency = priv->frequency * 1000;
 return 0;
}
