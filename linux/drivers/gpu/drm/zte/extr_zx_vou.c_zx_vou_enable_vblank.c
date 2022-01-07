
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct zx_vou_hw {scalar_t__ timing; } ;
struct zx_crtc {TYPE_1__* bits; } ;
struct drm_crtc {int dummy; } ;
struct TYPE_2__ {int int_frame_mask; } ;


 scalar_t__ TIMING_INT_CTRL ;
 struct zx_vou_hw* crtc_to_vou (struct drm_crtc*) ;
 struct zx_crtc* to_zx_crtc (struct drm_crtc*) ;
 int zx_writel_mask (scalar_t__,int ,int ) ;

__attribute__((used)) static int zx_vou_enable_vblank(struct drm_crtc *crtc)
{
 struct zx_crtc *zcrtc = to_zx_crtc(crtc);
 struct zx_vou_hw *vou = crtc_to_vou(crtc);
 u32 int_frame_mask = zcrtc->bits->int_frame_mask;

 zx_writel_mask(vou->timing + TIMING_INT_CTRL, int_frame_mask,
         int_frame_mask);

 return 0;
}
