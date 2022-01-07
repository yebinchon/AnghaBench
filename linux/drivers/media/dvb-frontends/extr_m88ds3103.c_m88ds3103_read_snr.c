
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_4__ {TYPE_1__* stat; } ;
struct dtv_frontend_properties {TYPE_2__ cnr; } ;
struct dvb_frontend {struct dtv_frontend_properties dtv_property_cache; } ;
struct TYPE_3__ {scalar_t__ scale; int svalue; } ;


 scalar_t__ FE_SCALE_DECIBEL ;
 int div_s64 (int ,int) ;

__attribute__((used)) static int m88ds3103_read_snr(struct dvb_frontend *fe, u16 *snr)
{
 struct dtv_frontend_properties *c = &fe->dtv_property_cache;

 if (c->cnr.stat[0].scale == FE_SCALE_DECIBEL)
  *snr = div_s64(c->cnr.stat[0].svalue, 100);
 else
  *snr = 0;

 return 0;
}
