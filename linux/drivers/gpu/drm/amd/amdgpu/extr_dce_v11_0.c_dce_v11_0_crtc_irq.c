
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct amdgpu_iv_entry {int src_id; int* src_data; } ;
struct amdgpu_irq_src {int dummy; } ;
struct amdgpu_device {int ddev; } ;
struct TYPE_2__ {int vblank; int vline; int reg; } ;


 int DRM_DEBUG (char*,...) ;
 int RREG32 (int ) ;
 unsigned int amdgpu_display_crtc_idx_to_irq_type (struct amdgpu_device*,unsigned int) ;
 int amdgpu_irq_enabled (struct amdgpu_device*,struct amdgpu_irq_src*,unsigned int) ;
 int dce_v11_0_crtc_vblank_int_ack (struct amdgpu_device*,unsigned int) ;
 int dce_v11_0_crtc_vline_int_ack (struct amdgpu_device*,unsigned int) ;
 int drm_handle_vblank (int ,unsigned int) ;
 TYPE_1__* interrupt_status_offsets ;

__attribute__((used)) static int dce_v11_0_crtc_irq(struct amdgpu_device *adev,
    struct amdgpu_irq_src *source,
    struct amdgpu_iv_entry *entry)
{
 unsigned crtc = entry->src_id - 1;
 uint32_t disp_int = RREG32(interrupt_status_offsets[crtc].reg);
 unsigned int irq_type = amdgpu_display_crtc_idx_to_irq_type(adev,
            crtc);

 switch (entry->src_data[0]) {
 case 0:
  if (disp_int & interrupt_status_offsets[crtc].vblank)
   dce_v11_0_crtc_vblank_int_ack(adev, crtc);
  else
   DRM_DEBUG("IH: IH event w/o asserted irq bit?\n");

  if (amdgpu_irq_enabled(adev, source, irq_type)) {
   drm_handle_vblank(adev->ddev, crtc);
  }
  DRM_DEBUG("IH: D%d vblank\n", crtc + 1);

  break;
 case 1:
  if (disp_int & interrupt_status_offsets[crtc].vline)
   dce_v11_0_crtc_vline_int_ack(adev, crtc);
  else
   DRM_DEBUG("IH: IH event w/o asserted irq bit?\n");

  DRM_DEBUG("IH: D%d vline\n", crtc + 1);

  break;
 default:
  DRM_DEBUG("Unhandled interrupt: %d %d\n", entry->src_id, entry->src_data[0]);
  break;
 }

 return 0;
}
