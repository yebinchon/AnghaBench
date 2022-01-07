
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rv6xx_ps {int dummy; } ;
struct radeon_ps {struct rv6xx_ps* ps_priv; } ;



__attribute__((used)) static struct rv6xx_ps *rv6xx_get_ps(struct radeon_ps *rps)
{
 struct rv6xx_ps *ps = rps->ps_priv;

 return ps;
}
