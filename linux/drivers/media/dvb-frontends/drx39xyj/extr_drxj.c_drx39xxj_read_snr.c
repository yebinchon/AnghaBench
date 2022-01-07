
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u16 ;
struct TYPE_3__ {TYPE_2__* stat; } ;
struct dtv_frontend_properties {TYPE_1__ cnr; } ;
struct dvb_frontend {struct dtv_frontend_properties dtv_property_cache; } ;
struct TYPE_4__ {scalar_t__ scale; int svalue; } ;


 scalar_t__ FE_SCALE_NOT_AVAILABLE ;
 int do_div (int ,int) ;

__attribute__((used)) static int drx39xxj_read_snr(struct dvb_frontend *fe, u16 *snr)
{
 struct dtv_frontend_properties *p = &fe->dtv_property_cache;
 u64 tmp64;

 if (p->cnr.stat[0].scale == FE_SCALE_NOT_AVAILABLE) {
  *snr = 0;
  return 0;
 }

 tmp64 = p->cnr.stat[0].svalue;
 do_div(tmp64, 10);
 *snr = tmp64;
 return 0;
}
