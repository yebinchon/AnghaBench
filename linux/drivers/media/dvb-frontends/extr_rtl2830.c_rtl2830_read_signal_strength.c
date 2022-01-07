
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_4__ {TYPE_1__* stat; } ;
struct dtv_frontend_properties {TYPE_2__ strength; } ;
struct dvb_frontend {struct dtv_frontend_properties dtv_property_cache; } ;
struct TYPE_3__ {scalar_t__ scale; int uvalue; } ;


 scalar_t__ FE_SCALE_RELATIVE ;

__attribute__((used)) static int rtl2830_read_signal_strength(struct dvb_frontend *fe, u16 *strength)
{
 struct dtv_frontend_properties *c = &fe->dtv_property_cache;

 if (c->strength.stat[0].scale == FE_SCALE_RELATIVE)
  *strength = c->strength.stat[0].uvalue;
 else
  *strength = 0;

 return 0;
}
