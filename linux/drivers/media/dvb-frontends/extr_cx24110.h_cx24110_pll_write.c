
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int (* write ) (struct dvb_frontend*,int *,int) ;} ;
struct dvb_frontend {TYPE_1__ ops; } ;


 int stub1 (struct dvb_frontend*,int *,int) ;

__attribute__((used)) static inline int cx24110_pll_write(struct dvb_frontend *fe, u32 val)
{
 u8 buf[] = {
  (u8)((val >> 24) & 0xff),
  (u8)((val >> 16) & 0xff),
  (u8)((val >> 8) & 0xff)
 };

 if (fe->ops.write)
  return fe->ops.write(fe, buf, 3);
 return 0;
}
