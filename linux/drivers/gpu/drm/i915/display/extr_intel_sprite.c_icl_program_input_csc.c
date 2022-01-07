
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_4__ {scalar_t__ color_range; size_t color_encoding; } ;
struct intel_plane_state {TYPE_2__ base; } ;
struct TYPE_3__ {int dev; } ;
struct intel_plane {int pipe; int id; TYPE_1__ base; } ;
struct intel_crtc_state {int dummy; } ;
struct drm_i915_private {int dummy; } ;
typedef enum plane_id { ____Placeholder_plane_id } plane_id ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int BOFF (int const) ;



 scalar_t__ DRM_COLOR_YCBCR_FULL_RANGE ;
 int GOFF (int const) ;
 int I915_WRITE_FW (int ,int) ;
 int PLANE_INPUT_CSC_COEFF (int,int,int) ;
 int PLANE_INPUT_CSC_POSTOFF (int,int,int) ;
 int PLANE_INPUT_CSC_PREOFF (int,int,int) ;
 int PREOFF_YUV_TO_RGB_HI ;
 int PREOFF_YUV_TO_RGB_LO ;
 int PREOFF_YUV_TO_RGB_ME ;
 int ROFF (int const) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static void
icl_program_input_csc(struct intel_plane *plane,
        const struct intel_crtc_state *crtc_state,
        const struct intel_plane_state *plane_state)
{
 struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 enum pipe pipe = plane->pipe;
 enum plane_id plane_id = plane->id;

 static const u16 input_csc_matrix[][9] = {







  [129] = {
   0x7AF8, 0x7800, 0x0,
   0x8B28, 0x7800, 0x9AC0,
   0x0, 0x7800, 0x7DD8,
  },







  [128] = {
   0x7C98, 0x7800, 0x0,
   0x9EF8, 0x7800, 0xAC00,
   0x0, 0x7800, 0x7ED8,
  },







  [130] = {
   0x7BC8, 0x7800, 0x0,
   0x8928, 0x7800, 0xAA88,
   0x0, 0x7800, 0x7F10,
  },
 };


 static const u16 input_csc_matrix_lr[][9] = {







  [129] = {
   0x7CC8, 0x7950, 0x0,
   0x8D00, 0x7950, 0x9C88,
   0x0, 0x7950, 0x6810,
  },







  [128] = {
   0x7E58, 0x7950, 0x0,
   0x8888, 0x7950, 0xADA8,
   0x0, 0x7950, 0x6870,
  },







  [130] = {
   0x7D70, 0x7950, 0x0,
   0x8A68, 0x7950, 0xAC00,
   0x0, 0x7950, 0x6890,
  },
 };
 const u16 *csc;

 if (plane_state->base.color_range == DRM_COLOR_YCBCR_FULL_RANGE)
  csc = input_csc_matrix[plane_state->base.color_encoding];
 else
  csc = input_csc_matrix_lr[plane_state->base.color_encoding];

 I915_WRITE_FW(PLANE_INPUT_CSC_COEFF(pipe, plane_id, 0), ROFF(csc[0]) |
        GOFF(csc[1]));
 I915_WRITE_FW(PLANE_INPUT_CSC_COEFF(pipe, plane_id, 1), BOFF(csc[2]));
 I915_WRITE_FW(PLANE_INPUT_CSC_COEFF(pipe, plane_id, 2), ROFF(csc[3]) |
        GOFF(csc[4]));
 I915_WRITE_FW(PLANE_INPUT_CSC_COEFF(pipe, plane_id, 3), BOFF(csc[5]));
 I915_WRITE_FW(PLANE_INPUT_CSC_COEFF(pipe, plane_id, 4), ROFF(csc[6]) |
        GOFF(csc[7]));
 I915_WRITE_FW(PLANE_INPUT_CSC_COEFF(pipe, plane_id, 5), BOFF(csc[8]));

 I915_WRITE_FW(PLANE_INPUT_CSC_PREOFF(pipe, plane_id, 0),
        PREOFF_YUV_TO_RGB_HI);
 if (plane_state->base.color_range == DRM_COLOR_YCBCR_FULL_RANGE)
  I915_WRITE_FW(PLANE_INPUT_CSC_PREOFF(pipe, plane_id, 1), 0);
 else
  I915_WRITE_FW(PLANE_INPUT_CSC_PREOFF(pipe, plane_id, 1),
         PREOFF_YUV_TO_RGB_ME);
 I915_WRITE_FW(PLANE_INPUT_CSC_PREOFF(pipe, plane_id, 2),
        PREOFF_YUV_TO_RGB_LO);
 I915_WRITE_FW(PLANE_INPUT_CSC_POSTOFF(pipe, plane_id, 0), 0x0);
 I915_WRITE_FW(PLANE_INPUT_CSC_POSTOFF(pipe, plane_id, 1), 0x0);
 I915_WRITE_FW(PLANE_INPUT_CSC_POSTOFF(pipe, plane_id, 2), 0x0);
}
