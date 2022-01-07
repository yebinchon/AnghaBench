
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_ps {struct igp_ps* ps_priv; } ;
struct igp_ps {int dummy; } ;



__attribute__((used)) static struct igp_ps *rs780_get_ps(struct radeon_ps *rps)
{
 struct igp_ps *ps = rps->ps_priv;

 return ps;
}
