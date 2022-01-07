
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kv_ps {int dummy; } ;
struct amdgpu_ps {struct kv_ps* ps_priv; } ;



__attribute__((used)) static struct kv_ps *kv_get_ps(struct amdgpu_ps *rps)
{
 struct kv_ps *ps = rps->ps_priv;

 return ps;
}
