
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int frequency_step_hz; } ;
struct TYPE_7__ {TYPE_2__ info; } ;
struct TYPE_5__ {int frequency_stepsize_hz; } ;
struct TYPE_8__ {TYPE_3__ tuner_ops; TYPE_1__ info; } ;
struct dtv_frontend_properties {int delivery_system; } ;
struct dvb_frontend {TYPE_4__ ops; struct dtv_frontend_properties dtv_property_cache; } ;






 int kHz ;
 int max (int ,int ) ;

__attribute__((used)) static u32 dvb_frontend_get_stepsize(struct dvb_frontend *fe)
{
 struct dtv_frontend_properties *c = &fe->dtv_property_cache;
 u32 fe_step = fe->ops.info.frequency_stepsize_hz;
 u32 tuner_step = fe->ops.tuner_ops.info.frequency_step_hz;
 u32 step = max(fe_step, tuner_step);

 switch (c->delivery_system) {
 case 131:
 case 130:
 case 128:
 case 129:
  step /= kHz;
  break;
 default:
  break;
 }

 return step;
}
