
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct mga_device {int dummy; } ;
struct drm_framebuffer {TYPE_2__* format; } ;
struct drm_device {struct mga_device* dev_private; } ;
struct drm_crtc {int gamma_size; int * gamma_store; int enabled; TYPE_1__* primary; struct drm_device* dev; } ;
struct TYPE_4__ {int* cpp; int depth; } ;
struct TYPE_3__ {struct drm_framebuffer* fb; } ;


 scalar_t__ DAC_INDEX ;
 scalar_t__ MGA1064_COL_PAL ;
 scalar_t__ MGA1064_INDEX ;
 int MGAG200_LUT_SIZE ;
 int WREG8 (scalar_t__,int) ;

__attribute__((used)) static void mga_crtc_load_lut(struct drm_crtc *crtc)
{
 struct drm_device *dev = crtc->dev;
 struct mga_device *mdev = dev->dev_private;
 struct drm_framebuffer *fb = crtc->primary->fb;
 u16 *r_ptr, *g_ptr, *b_ptr;
 int i;

 if (!crtc->enabled)
  return;

 r_ptr = crtc->gamma_store;
 g_ptr = r_ptr + crtc->gamma_size;
 b_ptr = g_ptr + crtc->gamma_size;

 WREG8(DAC_INDEX + MGA1064_INDEX, 0);

 if (fb && fb->format->cpp[0] * 8 == 16) {
  int inc = (fb->format->depth == 15) ? 8 : 4;
  u8 r, b;
  for (i = 0; i < MGAG200_LUT_SIZE; i += inc) {
   if (fb->format->depth == 16) {
    if (i > (MGAG200_LUT_SIZE >> 1)) {
     r = b = 0;
    } else {
     r = *r_ptr++ >> 8;
     b = *b_ptr++ >> 8;
     r_ptr++;
     b_ptr++;
    }
   } else {
    r = *r_ptr++ >> 8;
    b = *b_ptr++ >> 8;
   }

   WREG8(DAC_INDEX + MGA1064_COL_PAL, r);
   WREG8(DAC_INDEX + MGA1064_COL_PAL, *g_ptr++ >> 8);
   WREG8(DAC_INDEX + MGA1064_COL_PAL, b);
  }
  return;
 }
 for (i = 0; i < MGAG200_LUT_SIZE; i++) {

  WREG8(DAC_INDEX + MGA1064_COL_PAL, *r_ptr++ >> 8);
  WREG8(DAC_INDEX + MGA1064_COL_PAL, *g_ptr++ >> 8);
  WREG8(DAC_INDEX + MGA1064_COL_PAL, *b_ptr++ >> 8);
 }
}
