
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_5__ {scalar_t__ symbol_rate_min; scalar_t__ symbol_rate_max; } ;
struct TYPE_6__ {TYPE_2__ info; } ;
struct dtv_frontend_properties {scalar_t__ frequency; int delivery_system; scalar_t__ symbol_rate; } ;
struct dvb_frontend {TYPE_3__ ops; int id; TYPE_1__* dvb; struct dtv_frontend_properties dtv_property_cache; } ;
struct TYPE_4__ {int num; int device; } ;


 int EINVAL ;





 int dev_warn (int ,char*,int ,int ,scalar_t__,scalar_t__,scalar_t__) ;
 int dvb_frontend_get_frequency_limits (struct dvb_frontend*,scalar_t__*,scalar_t__*,int *) ;

__attribute__((used)) static int dvb_frontend_check_parameters(struct dvb_frontend *fe)
{
 struct dtv_frontend_properties *c = &fe->dtv_property_cache;
 u32 freq_min;
 u32 freq_max;


 dvb_frontend_get_frequency_limits(fe, &freq_min, &freq_max, ((void*)0));
 if ((freq_min && c->frequency < freq_min) ||
     (freq_max && c->frequency > freq_max)) {
  dev_warn(fe->dvb->device, "DVB: adapter %i frontend %i frequency %u out of range (%u..%u)\n",
    fe->dvb->num, fe->id, c->frequency,
    freq_min, freq_max);
  return -EINVAL;
 }


 switch (c->delivery_system) {
 case 130:
 case 129:
 case 128:
 case 132:
 case 131:
  if ((fe->ops.info.symbol_rate_min &&
       c->symbol_rate < fe->ops.info.symbol_rate_min) ||
      (fe->ops.info.symbol_rate_max &&
       c->symbol_rate > fe->ops.info.symbol_rate_max)) {
   dev_warn(fe->dvb->device, "DVB: adapter %i frontend %i symbol rate %u out of range (%u..%u)\n",
     fe->dvb->num, fe->id, c->symbol_rate,
     fe->ops.info.symbol_rate_min,
     fe->ops.info.symbol_rate_max);
   return -EINVAL;
  }
 default:
  break;
 }

 return 0;
}
