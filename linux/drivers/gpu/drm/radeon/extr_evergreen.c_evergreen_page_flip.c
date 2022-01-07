
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct TYPE_2__ {struct radeon_crtc** crtcs; } ;
struct radeon_device {TYPE_1__ mode_info; } ;
struct radeon_crtc {scalar_t__ crtc_offset; } ;


 scalar_t__ EVERGREEN_GRPH_FLIP_CONTROL ;
 scalar_t__ EVERGREEN_GRPH_PRIMARY_SURFACE_ADDRESS ;
 scalar_t__ EVERGREEN_GRPH_PRIMARY_SURFACE_ADDRESS_HIGH ;
 int EVERGREEN_GRPH_SURFACE_UPDATE_H_RETRACE_EN ;
 int RREG32 (scalar_t__) ;
 int WREG32 (scalar_t__,int ) ;
 int upper_32_bits (scalar_t__) ;

void evergreen_page_flip(struct radeon_device *rdev, int crtc_id, u64 crtc_base,
    bool async)
{
 struct radeon_crtc *radeon_crtc = rdev->mode_info.crtcs[crtc_id];


 WREG32(EVERGREEN_GRPH_FLIP_CONTROL + radeon_crtc->crtc_offset,
        async ? EVERGREEN_GRPH_SURFACE_UPDATE_H_RETRACE_EN : 0);
 WREG32(EVERGREEN_GRPH_PRIMARY_SURFACE_ADDRESS_HIGH + radeon_crtc->crtc_offset,
        upper_32_bits(crtc_base));
 WREG32(EVERGREEN_GRPH_PRIMARY_SURFACE_ADDRESS + radeon_crtc->crtc_offset,
        (u32)crtc_base);

 RREG32(EVERGREEN_GRPH_PRIMARY_SURFACE_ADDRESS + radeon_crtc->crtc_offset);
}
