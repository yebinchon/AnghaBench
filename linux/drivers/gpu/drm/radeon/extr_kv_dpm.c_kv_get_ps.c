
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_ps {struct kv_ps* ps_priv; } ;
struct kv_ps {int dummy; } ;



__attribute__((used)) static struct kv_ps *kv_get_ps(struct radeon_ps *rps)
{
 struct kv_ps *ps = rps->ps_priv;

 return ps;
}
