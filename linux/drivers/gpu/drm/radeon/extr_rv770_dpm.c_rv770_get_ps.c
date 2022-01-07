
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rv7xx_ps {int dummy; } ;
struct radeon_ps {struct rv7xx_ps* ps_priv; } ;



struct rv7xx_ps *rv770_get_ps(struct radeon_ps *rps)
{
 struct rv7xx_ps *ps = rps->ps_priv;

 return ps;
}
