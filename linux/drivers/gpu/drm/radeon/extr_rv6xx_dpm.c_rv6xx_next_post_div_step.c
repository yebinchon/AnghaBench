
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rv6xx_sclk_stepping {int post_divider; } ;
struct radeon_device {int dummy; } ;


 scalar_t__ rv6xx_can_step_post_div (struct radeon_device*,struct rv6xx_sclk_stepping*,struct rv6xx_sclk_stepping*) ;

__attribute__((used)) static struct rv6xx_sclk_stepping rv6xx_next_post_div_step(struct radeon_device *rdev,
          struct rv6xx_sclk_stepping *cur,
          struct rv6xx_sclk_stepping *target)
{
 struct rv6xx_sclk_stepping next = *cur;

 while (rv6xx_can_step_post_div(rdev, &next, target))
  next.post_divider--;

 return next;
}
