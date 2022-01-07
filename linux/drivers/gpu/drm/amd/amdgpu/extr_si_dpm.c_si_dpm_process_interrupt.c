
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct amdgpu_iv_entry {int src_id; } ;
struct amdgpu_irq_src {int dummy; } ;
struct TYPE_6__ {int high_to_low; int work; } ;
struct TYPE_4__ {TYPE_3__ thermal; } ;
struct TYPE_5__ {TYPE_1__ dpm; } ;
struct amdgpu_device {TYPE_2__ pm; } ;


 int DRM_DEBUG (char*) ;
 int EINVAL ;
 int schedule_work (int *) ;

__attribute__((used)) static int si_dpm_process_interrupt(struct amdgpu_device *adev,
        struct amdgpu_irq_src *source,
        struct amdgpu_iv_entry *entry)
{
 bool queue_thermal = 0;

 if (entry == ((void*)0))
  return -EINVAL;

 switch (entry->src_id) {
 case 230:
  DRM_DEBUG("IH: thermal low to high\n");
  adev->pm.dpm.thermal.high_to_low = 0;
  queue_thermal = 1;
  break;
 case 231:
  DRM_DEBUG("IH: thermal high to low\n");
  adev->pm.dpm.thermal.high_to_low = 1;
  queue_thermal = 1;
  break;
 default:
  break;
 }

 if (queue_thermal)
  schedule_work(&adev->pm.dpm.thermal.work);

 return 0;
}
