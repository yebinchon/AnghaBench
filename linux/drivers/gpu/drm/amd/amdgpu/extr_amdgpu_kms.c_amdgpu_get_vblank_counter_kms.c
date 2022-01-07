
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct TYPE_6__ {unsigned int num_crtc; TYPE_2__** crtcs; } ;
struct amdgpu_device {TYPE_3__ mode_info; } ;
struct TYPE_4__ {int hwmode; } ;
struct TYPE_5__ {TYPE_1__ base; } ;


 int DRM_DEBUG_VBL (char*,...) ;
 int DRM_ERROR (char*,unsigned int) ;
 int DRM_SCANOUTPOS_ACCURATE ;
 int DRM_SCANOUTPOS_VALID ;
 scalar_t__ EINVAL ;
 int GET_DISTANCE_TO_VBLANKSTART ;
 int amdgpu_display_get_crtc_scanoutpos (struct drm_device*,unsigned int,int ,int*,int*,int *,int *,int *) ;
 scalar_t__ amdgpu_display_vblank_get_counter (struct amdgpu_device*,unsigned int) ;

u32 amdgpu_get_vblank_counter_kms(struct drm_device *dev, unsigned int pipe)
{
 struct amdgpu_device *adev = dev->dev_private;
 int vpos, hpos, stat;
 u32 count;

 if (pipe >= adev->mode_info.num_crtc) {
  DRM_ERROR("Invalid crtc %u\n", pipe);
  return -EINVAL;
 }
 if (adev->mode_info.crtcs[pipe]) {



  do {
   count = amdgpu_display_vblank_get_counter(adev, pipe);




   stat = amdgpu_display_get_crtc_scanoutpos(
    dev, pipe, GET_DISTANCE_TO_VBLANKSTART,
    &vpos, &hpos, ((void*)0), ((void*)0),
    &adev->mode_info.crtcs[pipe]->base.hwmode);
  } while (count != amdgpu_display_vblank_get_counter(adev, pipe));

  if (((stat & (DRM_SCANOUTPOS_VALID | DRM_SCANOUTPOS_ACCURATE)) !=
      (DRM_SCANOUTPOS_VALID | DRM_SCANOUTPOS_ACCURATE))) {
   DRM_DEBUG_VBL("Query failed! stat %d\n", stat);
  } else {
   DRM_DEBUG_VBL("crtc %d: dist from vblank start %d\n",
          pipe, vpos);





   if (vpos >= 0)
    count++;
  }
 } else {

  count = amdgpu_display_vblank_get_counter(adev, pipe);
  DRM_DEBUG_VBL("NULL mode info! Returned count may be wrong.\n");
 }

 return count;
}
