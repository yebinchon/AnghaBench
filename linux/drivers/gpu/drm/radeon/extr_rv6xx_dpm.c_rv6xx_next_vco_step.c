
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rv6xx_sclk_stepping {int vco_frequency; int post_divider; } ;
struct radeon_device {int dummy; } ;



__attribute__((used)) static struct rv6xx_sclk_stepping rv6xx_next_vco_step(struct radeon_device *rdev,
            struct rv6xx_sclk_stepping *cur,
            bool increasing_vco, u32 step_size)
{
 struct rv6xx_sclk_stepping next;

 next.post_divider = cur->post_divider;

 if (increasing_vco)
  next.vco_frequency = (cur->vco_frequency * (100 + step_size)) / 100;
 else
  next.vco_frequency = (cur->vco_frequency * 100 + 99 + step_size) / (100 + step_size);

 return next;
}
