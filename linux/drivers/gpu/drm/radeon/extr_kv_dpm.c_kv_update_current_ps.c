
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_ps {struct kv_ps* ps_priv; } ;
struct radeon_device {int dummy; } ;
struct kv_ps {int dummy; } ;
struct kv_power_info {struct kv_ps current_ps; struct radeon_ps current_rps; } ;


 struct kv_power_info* kv_get_pi (struct radeon_device*) ;
 struct kv_ps* kv_get_ps (struct radeon_ps*) ;

__attribute__((used)) static void kv_update_current_ps(struct radeon_device *rdev,
     struct radeon_ps *rps)
{
 struct kv_ps *new_ps = kv_get_ps(rps);
 struct kv_power_info *pi = kv_get_pi(rdev);

 pi->current_rps = *rps;
 pi->current_ps = *new_ps;
 pi->current_rps.ps_priv = &pi->current_ps;
}
