
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* set_params ) (struct dvb_frontend*) ;} ;
struct TYPE_4__ {int (* i2c_gate_ctrl ) (struct dvb_frontend*,int) ;TYPE_1__ tuner_ops; } ;
struct dvb_frontend {TYPE_2__ ops; struct cxd2841er_priv* demodulator_priv; } ;
struct cxd2841er_priv {int flags; } ;


 int CXD2841ER_USE_GATECTRL ;
 int stub1 (struct dvb_frontend*,int) ;
 int stub2 (struct dvb_frontend*) ;
 int stub3 (struct dvb_frontend*,int) ;

__attribute__((used)) static int cxd2841er_tuner_set(struct dvb_frontend *fe)
{
 struct cxd2841er_priv *priv = fe->demodulator_priv;

 if ((priv->flags & CXD2841ER_USE_GATECTRL) && fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 1);
 if (fe->ops.tuner_ops.set_params)
  fe->ops.tuner_ops.set_params(fe);
 if ((priv->flags & CXD2841ER_USE_GATECTRL) && fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 0);

 return 0;
}
