
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct amdgpu_iv_entry {unsigned int* src_data; int src_id; } ;
struct amdgpu_irq_src {int dummy; } ;
struct TYPE_3__ {unsigned int num_hpd; } ;
struct amdgpu_device {int hotplug_work; TYPE_1__ mode_info; } ;
struct TYPE_4__ {int hpd; int reg; } ;


 int DRM_DEBUG (char*,unsigned int,...) ;
 int RREG32 (int ) ;
 int dce_v11_0_hpd_int_ack (struct amdgpu_device*,unsigned int) ;
 TYPE_2__* interrupt_status_offsets ;
 int schedule_work (int *) ;

__attribute__((used)) static int dce_v11_0_hpd_irq(struct amdgpu_device *adev,
        struct amdgpu_irq_src *source,
        struct amdgpu_iv_entry *entry)
{
 uint32_t disp_int, mask;
 unsigned hpd;

 if (entry->src_data[0] >= adev->mode_info.num_hpd) {
  DRM_DEBUG("Unhandled interrupt: %d %d\n", entry->src_id, entry->src_data[0]);
  return 0;
 }

 hpd = entry->src_data[0];
 disp_int = RREG32(interrupt_status_offsets[hpd].reg);
 mask = interrupt_status_offsets[hpd].hpd;

 if (disp_int & mask) {
  dce_v11_0_hpd_int_ack(adev, hpd);
  schedule_work(&adev->hotplug_work);
  DRM_DEBUG("IH: HPD%d\n", hpd + 1);
 }

 return 0;
}
