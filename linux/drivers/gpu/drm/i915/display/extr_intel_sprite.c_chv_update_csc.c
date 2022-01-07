
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t color_encoding; struct drm_framebuffer* fb; int plane; } ;
struct intel_plane_state {TYPE_2__ base; } ;
struct TYPE_4__ {int dev; } ;
struct intel_plane {int id; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_framebuffer {TYPE_3__* format; } ;
typedef int s16 ;
typedef enum plane_id { ____Placeholder_plane_id } plane_id ;
struct TYPE_6__ {int is_yuv; } ;




 int I915_WRITE_FW (int ,int) ;
 int SPCSCC01 (int) ;
 int SPCSCC23 (int) ;
 int SPCSCC45 (int) ;
 int SPCSCC67 (int) ;
 int SPCSCC8 (int) ;
 int SPCSCCBICLAMP (int) ;
 int SPCSCCBOCLAMP (int) ;
 int SPCSCCBOFF (int) ;
 int SPCSCCRICLAMP (int) ;
 int SPCSCCROCLAMP (int) ;
 int SPCSCCROFF (int) ;
 int SPCSCYGICLAMP (int) ;
 int SPCSCYGOCLAMP (int) ;
 int SPCSCYGOFF (int) ;
 int SPCSC_C0 (int const) ;
 int SPCSC_C1 (int const) ;
 int SPCSC_IMAX (int) ;
 int SPCSC_IMIN (int) ;
 int SPCSC_IOFF (int ) ;
 int SPCSC_OMAX (int) ;
 int SPCSC_OMIN (int ) ;
 int SPCSC_OOFF (int ) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_plane* to_intel_plane (int ) ;

__attribute__((used)) static void
chv_update_csc(const struct intel_plane_state *plane_state)
{
 struct intel_plane *plane = to_intel_plane(plane_state->base.plane);
 struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 const struct drm_framebuffer *fb = plane_state->base.fb;
 enum plane_id plane_id = plane->id;
 static const s16 csc_matrix[][9] = {

  [129] = {
    5743, 4096, 0,
   -2925, 4096, -1410,
       0, 4096, 7258,
  },

  [128] = {
    6450, 4096, 0,
   -1917, 4096, -767,
       0, 4096, 7601,
  },
 };
 const s16 *csc = csc_matrix[plane_state->base.color_encoding];


 if (!fb->format->is_yuv)
  return;

 I915_WRITE_FW(SPCSCYGOFF(plane_id), SPCSC_OOFF(0) | SPCSC_IOFF(0));
 I915_WRITE_FW(SPCSCCBOFF(plane_id), SPCSC_OOFF(0) | SPCSC_IOFF(0));
 I915_WRITE_FW(SPCSCCROFF(plane_id), SPCSC_OOFF(0) | SPCSC_IOFF(0));

 I915_WRITE_FW(SPCSCC01(plane_id), SPCSC_C1(csc[1]) | SPCSC_C0(csc[0]));
 I915_WRITE_FW(SPCSCC23(plane_id), SPCSC_C1(csc[3]) | SPCSC_C0(csc[2]));
 I915_WRITE_FW(SPCSCC45(plane_id), SPCSC_C1(csc[5]) | SPCSC_C0(csc[4]));
 I915_WRITE_FW(SPCSCC67(plane_id), SPCSC_C1(csc[7]) | SPCSC_C0(csc[6]));
 I915_WRITE_FW(SPCSCC8(plane_id), SPCSC_C0(csc[8]));

 I915_WRITE_FW(SPCSCYGICLAMP(plane_id), SPCSC_IMAX(1023) | SPCSC_IMIN(0));
 I915_WRITE_FW(SPCSCCBICLAMP(plane_id), SPCSC_IMAX(512) | SPCSC_IMIN(-512));
 I915_WRITE_FW(SPCSCCRICLAMP(plane_id), SPCSC_IMAX(512) | SPCSC_IMIN(-512));

 I915_WRITE_FW(SPCSCYGOCLAMP(plane_id), SPCSC_OMAX(1023) | SPCSC_OMIN(0));
 I915_WRITE_FW(SPCSCCBOCLAMP(plane_id), SPCSC_OMAX(1023) | SPCSC_OMIN(0));
 I915_WRITE_FW(SPCSCCROCLAMP(plane_id), SPCSC_OMAX(1023) | SPCSC_OMIN(0));
}
