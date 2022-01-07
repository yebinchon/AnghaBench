
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int bandwidth_hz; } ;
struct dvb_frontend {TYPE_1__ dtv_property_cache; } ;



__attribute__((used)) static void thomson_dtt759x_bw(struct dvb_frontend *fe, u8 *buf)
{
 u32 bw = fe->dtv_property_cache.bandwidth_hz;
 if (bw == 7000000)
  buf[3] |= 0x10;
}
