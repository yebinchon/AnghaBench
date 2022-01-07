
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct drm_display_mode {int crtc_vdisplay; int crtc_vtotal; } ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct TYPE_4__ {TYPE_1__** crtcs; } ;
struct amdgpu_device {TYPE_2__ mode_info; } ;
typedef int ktime_t ;
struct TYPE_3__ {scalar_t__ lb_vblank_lead_lines; } ;


 int DRM_SCANOUTPOS_ACCURATE ;
 int DRM_SCANOUTPOS_IN_VBLANK ;
 int DRM_SCANOUTPOS_VALID ;
 unsigned int GET_DISTANCE_TO_VBLANKSTART ;
 unsigned int USE_REAL_VBLANKSTART ;
 scalar_t__ amdgpu_display_page_flip_get_scanoutpos (struct amdgpu_device*,unsigned int,int*,int*) ;
 int ktime_get () ;

int amdgpu_display_get_crtc_scanoutpos(struct drm_device *dev,
   unsigned int pipe, unsigned int flags, int *vpos,
   int *hpos, ktime_t *stime, ktime_t *etime,
   const struct drm_display_mode *mode)
{
 u32 vbl = 0, position = 0;
 int vbl_start, vbl_end, vtotal, ret = 0;
 bool in_vbl = 1;

 struct amdgpu_device *adev = dev->dev_private;




 if (stime)
  *stime = ktime_get();

 if (amdgpu_display_page_flip_get_scanoutpos(adev, pipe, &vbl, &position) == 0)
  ret |= DRM_SCANOUTPOS_VALID;


 if (etime)
  *etime = ktime_get();




 *vpos = position & 0x1fff;
 *hpos = (position >> 16) & 0x1fff;


 if (vbl > 0) {

  ret |= DRM_SCANOUTPOS_ACCURATE;
  vbl_start = vbl & 0x1fff;
  vbl_end = (vbl >> 16) & 0x1fff;
 }
 else {

  vbl_start = mode->crtc_vdisplay;
  vbl_end = 0;
 }


 if (flags & GET_DISTANCE_TO_VBLANKSTART) {

     *hpos = *vpos - vbl_start;
 }
 if (!(flags & USE_REAL_VBLANKSTART))
  vbl_start -= adev->mode_info.crtcs[pipe]->lb_vblank_lead_lines;


 if ((*vpos < vbl_start) && (*vpos >= vbl_end))
  in_vbl = 0;


 if (in_vbl)
     ret |= DRM_SCANOUTPOS_IN_VBLANK;


 if (flags & GET_DISTANCE_TO_VBLANKSTART) {

  *vpos -= vbl_start;
  return ret;
 }
 if (in_vbl && (*vpos >= vbl_start)) {
  vtotal = mode->crtc_vtotal;





  *vpos = (*vpos < vtotal) ? (*vpos - vtotal) : 0;
 }


 *vpos = *vpos - vbl_end;

 return ret;
}
