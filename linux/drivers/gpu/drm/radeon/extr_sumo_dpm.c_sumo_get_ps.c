
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sumo_ps {int dummy; } ;
struct radeon_ps {struct sumo_ps* ps_priv; } ;



__attribute__((used)) static struct sumo_ps *sumo_get_ps(struct radeon_ps *rps)
{
 struct sumo_ps *ps = rps->ps_priv;

 return ps;
}
