
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__** crtcs; } ;
struct TYPE_5__ {int active_crtcs; } ;
struct radeon_device {int num_crtc; TYPE_4__ mode_info; int ddev; TYPE_1__ pm; } ;
struct TYPE_6__ {int hwmode; } ;
struct TYPE_7__ {TYPE_2__ base; } ;


 int DRM_SCANOUTPOS_IN_VBLANK ;
 int DRM_SCANOUTPOS_VALID ;
 int USE_REAL_VBLANKSTART ;
 int radeon_get_crtc_scanoutpos (int ,int,int ,int*,int*,int *,int *,int *) ;

__attribute__((used)) static bool radeon_pm_in_vbl(struct radeon_device *rdev)
{
 int crtc, vpos, hpos, vbl_status;
 bool in_vbl = 1;




 for (crtc = 0; (crtc < rdev->num_crtc) && in_vbl; crtc++) {
  if (rdev->pm.active_crtcs & (1 << crtc)) {
   vbl_status = radeon_get_crtc_scanoutpos(rdev->ddev,
        crtc,
        USE_REAL_VBLANKSTART,
        &vpos, &hpos, ((void*)0), ((void*)0),
        &rdev->mode_info.crtcs[crtc]->base.hwmode);
   if ((vbl_status & DRM_SCANOUTPOS_VALID) &&
       !(vbl_status & DRM_SCANOUTPOS_IN_VBLANK))
    in_vbl = 0;
  }
 }

 return in_vbl;
}
