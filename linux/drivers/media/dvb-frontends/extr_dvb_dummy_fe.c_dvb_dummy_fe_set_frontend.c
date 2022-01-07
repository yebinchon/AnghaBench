
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* set_params ) (struct dvb_frontend*) ;} ;
struct TYPE_4__ {int (* i2c_gate_ctrl ) (struct dvb_frontend*,int ) ;TYPE_1__ tuner_ops; } ;
struct dvb_frontend {TYPE_2__ ops; } ;


 int stub1 (struct dvb_frontend*) ;
 int stub2 (struct dvb_frontend*,int ) ;

__attribute__((used)) static int dvb_dummy_fe_set_frontend(struct dvb_frontend *fe)
{
 if (fe->ops.tuner_ops.set_params) {
  fe->ops.tuner_ops.set_params(fe);
  if (fe->ops.i2c_gate_ctrl)
   fe->ops.i2c_gate_ctrl(fe, 0);
 }

 return 0;
}
