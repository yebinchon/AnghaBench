
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int release; } ;
struct TYPE_4__ {int release; } ;
struct TYPE_6__ {TYPE_2__ analog_ops; TYPE_1__ tuner_ops; int release_sec; } ;
struct dvb_frontend {TYPE_3__ ops; } ;


 int dvb_frontend_invoke_release (struct dvb_frontend*,int ) ;
 int dvb_frontend_put (struct dvb_frontend*) ;

void dvb_frontend_detach(struct dvb_frontend *fe)
{
 dvb_frontend_invoke_release(fe, fe->ops.release_sec);
 dvb_frontend_invoke_release(fe, fe->ops.tuner_ops.release);
 dvb_frontend_invoke_release(fe, fe->ops.analog_ops.release);
 dvb_frontend_put(fe);
}
