
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct drm_framebuffer {int* pitches; TYPE_4__* format; } ;
struct TYPE_5__ {struct amdgpu_crtc** crtcs; } ;
struct amdgpu_device {TYPE_1__ mode_info; } ;
struct TYPE_7__ {TYPE_2__* primary; } ;
struct amdgpu_crtc {scalar_t__ crtc_offset; TYPE_3__ base; } ;
struct TYPE_8__ {int* cpp; } ;
struct TYPE_6__ {struct drm_framebuffer* fb; } ;


 int GRPH_FLIP_CONTROL ;
 int GRPH_SURFACE_UPDATE_IMMEDIATE_EN ;
 int REG_SET_FIELD (int,int ,int ,int) ;
 int RREG32 (scalar_t__) ;
 int WREG32 (scalar_t__,int) ;
 int lower_32_bits (int ) ;
 scalar_t__ mmGRPH_FLIP_CONTROL ;
 scalar_t__ mmGRPH_PITCH ;
 scalar_t__ mmGRPH_PRIMARY_SURFACE_ADDRESS ;
 scalar_t__ mmGRPH_PRIMARY_SURFACE_ADDRESS_HIGH ;
 int upper_32_bits (int ) ;

__attribute__((used)) static void dce_v11_0_page_flip(struct amdgpu_device *adev,
    int crtc_id, u64 crtc_base, bool async)
{
 struct amdgpu_crtc *amdgpu_crtc = adev->mode_info.crtcs[crtc_id];
 struct drm_framebuffer *fb = amdgpu_crtc->base.primary->fb;
 u32 tmp;


 tmp = RREG32(mmGRPH_FLIP_CONTROL + amdgpu_crtc->crtc_offset);
 tmp = REG_SET_FIELD(tmp, GRPH_FLIP_CONTROL,
       GRPH_SURFACE_UPDATE_IMMEDIATE_EN, async ? 1 : 0);
 WREG32(mmGRPH_FLIP_CONTROL + amdgpu_crtc->crtc_offset, tmp);

 WREG32(mmGRPH_PITCH + amdgpu_crtc->crtc_offset,
        fb->pitches[0] / fb->format->cpp[0]);

 WREG32(mmGRPH_PRIMARY_SURFACE_ADDRESS_HIGH + amdgpu_crtc->crtc_offset,
        upper_32_bits(crtc_base));

 WREG32(mmGRPH_PRIMARY_SURFACE_ADDRESS + amdgpu_crtc->crtc_offset,
        lower_32_bits(crtc_base));

 RREG32(mmGRPH_PRIMARY_SURFACE_ADDRESS + amdgpu_crtc->crtc_offset);
}
