
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int top; } ;
struct tpg_data {TYPE_1__ crop; } ;





__attribute__((used)) static unsigned tpg_calc_frameline(const struct tpg_data *tpg, unsigned src_y,
        unsigned field)
{
 switch (field) {
 case 128:
  return tpg->crop.top + src_y * 2;
 case 129:
  return tpg->crop.top + src_y * 2 + 1;
 default:
  return src_y + tpg->crop.top;
 }
}
