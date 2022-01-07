
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_levels; int* clocks_in_khz; } ;
struct dc {TYPE_1__ sclk_lvls; } ;


 int ASSERT (int ) ;

__attribute__((used)) static int determine_sclk_from_bounding_box(
  const struct dc *dc,
  int required_sclk)
{
 int i;





 if (dc->sclk_lvls.num_levels == 0)
  return required_sclk;

 for (i = 0; i < dc->sclk_lvls.num_levels; i++) {
  if (dc->sclk_lvls.clocks_in_khz[i] >= required_sclk)
   return dc->sclk_lvls.clocks_in_khz[i];
 }





 ASSERT(0);
 return dc->sclk_lvls.clocks_in_khz[dc->sclk_lvls.num_levels - 1];
}
