
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kv_ps {int num_levels; struct kv_pl* levels; } ;
struct kv_pl {int vddc_index; int sclk; } ;
struct amdgpu_ps {int dclk; int vclk; int caps; int class2; int class; } ;
struct amdgpu_device {int dummy; } ;


 int amdgpu_dpm_print_cap_info (int ) ;
 int amdgpu_dpm_print_class_info (int ,int ) ;
 int amdgpu_dpm_print_ps_status (struct amdgpu_device*,struct amdgpu_ps*) ;
 int kv_convert_8bit_index_to_voltage (struct amdgpu_device*,int ) ;
 struct kv_ps* kv_get_ps (struct amdgpu_ps*) ;
 int printk (char*,int,int ,...) ;

__attribute__((used)) static void
kv_dpm_print_power_state(void *handle, void *request_ps)
{
 int i;
 struct amdgpu_ps *rps = (struct amdgpu_ps *)request_ps;
 struct kv_ps *ps = kv_get_ps(rps);
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 amdgpu_dpm_print_class_info(rps->class, rps->class2);
 amdgpu_dpm_print_cap_info(rps->caps);
 printk("\tuvd    vclk: %d dclk: %d\n", rps->vclk, rps->dclk);
 for (i = 0; i < ps->num_levels; i++) {
  struct kv_pl *pl = &ps->levels[i];
  printk("\t\tpower level %d    sclk: %u vddc: %u\n",
         i, pl->sclk,
         kv_convert_8bit_index_to_voltage(adev, pl->vddc_index));
 }
 amdgpu_dpm_print_ps_status(adev, rps);
}
