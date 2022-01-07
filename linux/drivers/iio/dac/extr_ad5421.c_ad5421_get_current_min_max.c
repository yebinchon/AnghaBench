
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad5421_state {int current_range; } ;






__attribute__((used)) static void ad5421_get_current_min_max(struct ad5421_state *st,
 unsigned int *min, unsigned int *max)
{


 switch (st->current_range) {
 case 128:
  *min = 4000;
  *max = 20000;
  break;
 case 129:
  *min = 3800;
  *max = 21000;
  break;
 case 130:
  *min = 3200;
  *max = 24000;
  break;
 default:
  *min = 0;
  *max = 1;
  break;
 }
}
