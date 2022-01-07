
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si_ps {int dummy; } ;
struct amdgpu_ps {struct si_ps* ps_priv; } ;



__attribute__((used)) static struct si_ps *si_get_ps(struct amdgpu_ps *aps)
{
 struct si_ps *ps = aps->ps_priv;

 return ps;
}
