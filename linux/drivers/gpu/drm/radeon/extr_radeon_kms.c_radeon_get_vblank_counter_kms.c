
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_6__ {TYPE_2__** crtcs; } ;
struct radeon_device {unsigned int num_crtc; TYPE_3__ mode_info; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct TYPE_4__ {int hwmode; } ;
struct TYPE_5__ {TYPE_1__ base; } ;


 int DRM_DEBUG_VBL (char*,...) ;
 int DRM_ERROR (char*,unsigned int) ;
 int DRM_SCANOUTPOS_ACCURATE ;
 int DRM_SCANOUTPOS_VALID ;
 scalar_t__ EINVAL ;
 int GET_DISTANCE_TO_VBLANKSTART ;
 int radeon_get_crtc_scanoutpos (struct drm_device*,unsigned int,int ,int*,int*,int *,int *,int *) ;
 scalar_t__ radeon_get_vblank_counter (struct radeon_device*,unsigned int) ;

u32 radeon_get_vblank_counter_kms(struct drm_device *dev, unsigned int pipe)
{
 int vpos, hpos, stat;
 u32 count;
 struct radeon_device *rdev = dev->dev_private;

 if (pipe >= rdev->num_crtc) {
  DRM_ERROR("Invalid crtc %u\n", pipe);
  return -EINVAL;
 }
 if (rdev->mode_info.crtcs[pipe]) {



  do {
   count = radeon_get_vblank_counter(rdev, pipe);




   stat = radeon_get_crtc_scanoutpos(
    dev, pipe, GET_DISTANCE_TO_VBLANKSTART,
    &vpos, &hpos, ((void*)0), ((void*)0),
    &rdev->mode_info.crtcs[pipe]->base.hwmode);
  } while (count != radeon_get_vblank_counter(rdev, pipe));

  if (((stat & (DRM_SCANOUTPOS_VALID | DRM_SCANOUTPOS_ACCURATE)) !=
      (DRM_SCANOUTPOS_VALID | DRM_SCANOUTPOS_ACCURATE))) {
   DRM_DEBUG_VBL("Query failed! stat %d\n", stat);
  }
  else {
   DRM_DEBUG_VBL("crtc %u: dist from vblank start %d\n",
          pipe, vpos);





   if (vpos >= 0)
    count++;
  }
 }
 else {

     count = radeon_get_vblank_counter(rdev, pipe);
     DRM_DEBUG_VBL("NULL mode info! Returned count may be wrong.\n");
 }

 return count;
}
