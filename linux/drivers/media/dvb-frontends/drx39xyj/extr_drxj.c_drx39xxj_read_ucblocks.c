
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {TYPE_1__* stat; } ;
struct dtv_frontend_properties {TYPE_2__ block_error; } ;
struct dvb_frontend {struct dtv_frontend_properties dtv_property_cache; } ;
struct TYPE_3__ {scalar_t__ scale; int uvalue; } ;


 scalar_t__ FE_SCALE_NOT_AVAILABLE ;

__attribute__((used)) static int drx39xxj_read_ucblocks(struct dvb_frontend *fe, u32 *ucb)
{
 struct dtv_frontend_properties *p = &fe->dtv_property_cache;

 if (p->block_error.stat[0].scale == FE_SCALE_NOT_AVAILABLE) {
  *ucb = 0;
  return 0;
 }

 *ucb = p->block_error.stat[0].uvalue;
 return 0;
}
