
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_ps {scalar_t__ vclk; scalar_t__ dclk; } ;



__attribute__((used)) static bool trinity_uvd_clocks_zero(struct radeon_ps *rps)
{
 if ((rps->vclk == 0) && (rps->dclk == 0))
  return 1;
 else
  return 0;
}
