
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si_ps {int performance_level_count; int * performance_levels; } ;
struct amdgpu_ps {scalar_t__ vclk; scalar_t__ dclk; scalar_t__ evclk; scalar_t__ ecclk; } ;
struct amdgpu_device {int dummy; } ;


 int EINVAL ;
 int printk (char*) ;
 int si_are_power_levels_equal (int *,int *) ;
 struct si_ps* si_get_ps (struct amdgpu_ps*) ;

__attribute__((used)) static int si_check_state_equal(void *handle,
    void *current_ps,
    void *request_ps,
    bool *equal)
{
 struct si_ps *si_cps;
 struct si_ps *si_rps;
 int i;
 struct amdgpu_ps *cps = (struct amdgpu_ps *)current_ps;
 struct amdgpu_ps *rps = (struct amdgpu_ps *)request_ps;
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 if (adev == ((void*)0) || cps == ((void*)0) || rps == ((void*)0) || equal == ((void*)0))
  return -EINVAL;

 si_cps = si_get_ps((struct amdgpu_ps *)cps);
 si_rps = si_get_ps((struct amdgpu_ps *)rps);

 if (si_cps == ((void*)0)) {
  printk("si_cps is NULL\n");
  *equal = 0;
  return 0;
 }

 if (si_cps->performance_level_count != si_rps->performance_level_count) {
  *equal = 0;
  return 0;
 }

 for (i = 0; i < si_cps->performance_level_count; i++) {
  if (!si_are_power_levels_equal(&(si_cps->performance_levels[i]),
     &(si_rps->performance_levels[i]))) {
   *equal = 0;
   return 0;
  }
 }


 *equal = ((cps->vclk == rps->vclk) && (cps->dclk == rps->dclk));
 *equal &= ((cps->evclk == rps->evclk) && (cps->ecclk == rps->ecclk));

 return 0;
}
