
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct lgs8gxx_state {TYPE_1__* config; } ;
struct dvb_frontend {struct lgs8gxx_state* demodulator_priv; } ;
struct TYPE_2__ {scalar_t__ prod; } ;


 scalar_t__ LGS8GXX_PROD_LGS8913 ;
 scalar_t__ LGS8GXX_PROD_LGS8G75 ;
 int lgs8913_read_signal_strength (struct lgs8gxx_state*,int *) ;
 int lgs8g75_read_signal_strength (struct lgs8gxx_state*,int *) ;
 int lgs8gxx_read_signal_agc (struct lgs8gxx_state*,int *) ;

__attribute__((used)) static int lgs8gxx_read_signal_strength(struct dvb_frontend *fe, u16 *signal)
{
 struct lgs8gxx_state *priv = fe->demodulator_priv;

 if (priv->config->prod == LGS8GXX_PROD_LGS8913)
  return lgs8913_read_signal_strength(priv, signal);
 else if (priv->config->prod == LGS8GXX_PROD_LGS8G75)
  return lgs8g75_read_signal_strength(priv, signal);
 else
  return lgs8gxx_read_signal_agc(priv, signal);
}
