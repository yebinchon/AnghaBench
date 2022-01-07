
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_ps {struct ni_ps* ps_priv; } ;
struct ni_ps {int dummy; } ;



struct ni_ps *ni_get_ps(struct radeon_ps *rps)
{
 struct ni_ps *ps = rps->ps_priv;

 return ps;
}
