
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ top; } ;
struct tpg_data {int buf_height; TYPE_1__ compose; } ;





__attribute__((used)) static unsigned tpg_calc_buffer_line(const struct tpg_data *tpg, unsigned y,
        unsigned field)
{
 y += tpg->compose.top;
 switch (field) {
 case 128:
  if (y & 1)
   return tpg->buf_height / 2 + y / 2;
  return y / 2;
 case 129:
  if (y & 1)
   return y / 2;
  return tpg->buf_height / 2 + y / 2;
 default:
  return y;
 }
}
