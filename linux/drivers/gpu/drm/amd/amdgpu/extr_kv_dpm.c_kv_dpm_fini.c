
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int num_ps; TYPE_3__* priv; TYPE_3__* ps; } ;
struct TYPE_5__ {TYPE_1__ dpm; } ;
struct amdgpu_device {TYPE_2__ pm; } ;
struct TYPE_6__ {struct TYPE_6__* ps_priv; } ;


 int amdgpu_free_extended_power_table (struct amdgpu_device*) ;
 int kfree (TYPE_3__*) ;

__attribute__((used)) static void kv_dpm_fini(struct amdgpu_device *adev)
{
 int i;

 for (i = 0; i < adev->pm.dpm.num_ps; i++) {
  kfree(adev->pm.dpm.ps[i].ps_priv);
 }
 kfree(adev->pm.dpm.ps);
 kfree(adev->pm.dpm.priv);
 amdgpu_free_extended_power_table(adev);
}
