
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef unsigned int uint32_t ;
typedef unsigned int u32 ;
struct drm_gem_object {int dummy; } ;
struct drm_framebuffer {unsigned int width; unsigned int height; unsigned int* pitches; struct drm_gem_object** obj; TYPE_3__* format; } ;
struct drm_format_name_buf {int dummy; } ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct TYPE_4__ {unsigned int hdisplay; int vdisplay; } ;
struct drm_crtc {TYPE_2__* primary; TYPE_1__ mode; struct drm_device* dev; } ;
struct amdgpu_device {int dummy; } ;
struct amdgpu_crtc {scalar_t__ crtc_offset; } ;
struct amdgpu_bo {int dummy; } ;
struct TYPE_6__ {int format; unsigned int* cpp; } ;
struct TYPE_5__ {struct drm_framebuffer* fb; } ;


 int AMDGPU_GEM_DOMAIN_VRAM ;
 unsigned int AMDGPU_TILING_GET (scalar_t__,int ) ;
 unsigned int ARRAY_1D_TILED_THIN1 ;
 unsigned int ARRAY_2D_TILED_THIN1 ;
 int ARRAY_MODE ;
 int BANK_HEIGHT ;
 int BANK_WIDTH ;
 unsigned int DISPLAY_MICRO_TILING ;
 int DRM_DEBUG_KMS (char*) ;
 int DRM_ERROR (char*,int ) ;
 int EINVAL ;
 unsigned int GRPH_ARRAY_1D_TILED_THIN1 ;
 unsigned int GRPH_ARRAY_2D_TILED_THIN1 ;
 unsigned int GRPH_BLUE_SEL_R ;
 unsigned int GRPH_CONTROL__GRPH_ARRAY_MODE__SHIFT ;
 unsigned int GRPH_CONTROL__GRPH_BANK_HEIGHT__SHIFT ;
 unsigned int GRPH_CONTROL__GRPH_BANK_WIDTH__SHIFT ;
 unsigned int GRPH_CONTROL__GRPH_DEPTH__SHIFT ;
 unsigned int GRPH_CONTROL__GRPH_FORMAT__SHIFT ;
 unsigned int GRPH_CONTROL__GRPH_MACRO_TILE_ASPECT__SHIFT ;
 unsigned int GRPH_CONTROL__GRPH_MICRO_TILE_MODE__SHIFT ;
 unsigned int GRPH_CONTROL__GRPH_NUM_BANKS__SHIFT ;
 unsigned int GRPH_CONTROL__GRPH_PIPE_CONFIG__SHIFT ;
 unsigned int GRPH_CONTROL__GRPH_TILE_SPLIT__SHIFT ;
 unsigned int GRPH_DEPTH_16BPP ;
 unsigned int GRPH_DEPTH_32BPP ;
 unsigned int GRPH_DEPTH_8BPP ;
 unsigned int GRPH_ENDIAN_8IN16 ;
 unsigned int GRPH_ENDIAN_8IN32 ;
 unsigned int GRPH_ENDIAN_NONE ;
 unsigned int GRPH_FORMAT_ARGB1555 ;
 unsigned int GRPH_FORMAT_ARGB2101010 ;
 unsigned int GRPH_FORMAT_ARGB4444 ;
 unsigned int GRPH_FORMAT_ARGB565 ;
 unsigned int GRPH_FORMAT_ARGB8888 ;
 unsigned int GRPH_FORMAT_BGRA1010102 ;
 unsigned int GRPH_FORMAT_BGRA5551 ;
 unsigned int GRPH_FORMAT_INDEXED ;
 unsigned int GRPH_PRIMARY_SURFACE_ADDRESS__GRPH_PRIMARY_SURFACE_ADDRESS_MASK ;
 unsigned int GRPH_RED_SEL_B ;
 unsigned int GRPH_SECONDARY_SURFACE_ADDRESS__GRPH_SECONDARY_SURFACE_ADDRESS_MASK ;
 unsigned int GRPH_SWAP_CNTL__GRPH_BLUE_CROSSBAR__SHIFT ;
 unsigned int GRPH_SWAP_CNTL__GRPH_ENDIAN_SWAP__SHIFT ;
 unsigned int GRPH_SWAP_CNTL__GRPH_RED_CROSSBAR__SHIFT ;
 int LUT_10BIT_BYPASS_EN ;
 int MACRO_TILE_ASPECT ;
 int NUM_BANKS ;
 int PIPE_CONFIG ;
 int TILE_SPLIT ;
 int WREG32 (scalar_t__,unsigned int) ;
 int WREG32_P (scalar_t__,int ,int ) ;
 int amdgpu_bo_get_tiling_flags (struct amdgpu_bo*,scalar_t__*) ;
 scalar_t__ amdgpu_bo_gpu_offset (struct amdgpu_bo*) ;
 int amdgpu_bo_pin (struct amdgpu_bo*,int ) ;
 int amdgpu_bo_reserve (struct amdgpu_bo*,int) ;
 int amdgpu_bo_unpin (struct amdgpu_bo*) ;
 int amdgpu_bo_unreserve (struct amdgpu_bo*) ;
 int dce_v8_0_bandwidth_update (struct amdgpu_device*) ;
 int dce_v8_0_grph_enable (struct drm_crtc*,int) ;
 int dce_v8_0_vga_enable (struct drm_crtc*,int) ;
 int drm_get_format_name (int,struct drm_format_name_buf*) ;
 struct amdgpu_bo* gem_to_amdgpu_bo (struct drm_gem_object*) ;
 scalar_t__ mmGRPH_CONTROL ;
 scalar_t__ mmGRPH_FLIP_CONTROL ;
 scalar_t__ mmGRPH_LUT_10BIT_BYPASS_CONTROL ;
 scalar_t__ mmGRPH_PITCH ;
 scalar_t__ mmGRPH_PRIMARY_SURFACE_ADDRESS ;
 scalar_t__ mmGRPH_PRIMARY_SURFACE_ADDRESS_HIGH ;
 scalar_t__ mmGRPH_SECONDARY_SURFACE_ADDRESS ;
 scalar_t__ mmGRPH_SECONDARY_SURFACE_ADDRESS_HIGH ;
 scalar_t__ mmGRPH_SURFACE_OFFSET_X ;
 scalar_t__ mmGRPH_SURFACE_OFFSET_Y ;
 scalar_t__ mmGRPH_SWAP_CNTL ;
 scalar_t__ mmGRPH_X_END ;
 scalar_t__ mmGRPH_X_START ;
 scalar_t__ mmGRPH_Y_END ;
 scalar_t__ mmGRPH_Y_START ;
 scalar_t__ mmLB_DESKTOP_HEIGHT ;
 scalar_t__ mmMASTER_UPDATE_MODE ;
 scalar_t__ mmVIEWPORT_SIZE ;
 scalar_t__ mmVIEWPORT_START ;
 struct amdgpu_crtc* to_amdgpu_crtc (struct drm_crtc*) ;
 scalar_t__ unlikely (int) ;
 unsigned int upper_32_bits (scalar_t__) ;

__attribute__((used)) static int dce_v8_0_crtc_do_set_base(struct drm_crtc *crtc,
         struct drm_framebuffer *fb,
         int x, int y, int atomic)
{
 struct amdgpu_crtc *amdgpu_crtc = to_amdgpu_crtc(crtc);
 struct drm_device *dev = crtc->dev;
 struct amdgpu_device *adev = dev->dev_private;
 struct drm_framebuffer *target_fb;
 struct drm_gem_object *obj;
 struct amdgpu_bo *abo;
 uint64_t fb_location, tiling_flags;
 uint32_t fb_format, fb_pitch_pixels;
 u32 fb_swap = (GRPH_ENDIAN_NONE << GRPH_SWAP_CNTL__GRPH_ENDIAN_SWAP__SHIFT);
 u32 pipe_config;
 u32 viewport_w, viewport_h;
 int r;
 bool bypass_lut = 0;
 struct drm_format_name_buf format_name;


 if (!atomic && !crtc->primary->fb) {
  DRM_DEBUG_KMS("No FB bound\n");
  return 0;
 }

 if (atomic)
  target_fb = fb;
 else
  target_fb = crtc->primary->fb;




 obj = target_fb->obj[0];
 abo = gem_to_amdgpu_bo(obj);
 r = amdgpu_bo_reserve(abo, 0);
 if (unlikely(r != 0))
  return r;

 if (!atomic) {
  r = amdgpu_bo_pin(abo, AMDGPU_GEM_DOMAIN_VRAM);
  if (unlikely(r != 0)) {
   amdgpu_bo_unreserve(abo);
   return -EINVAL;
  }
 }
 fb_location = amdgpu_bo_gpu_offset(abo);

 amdgpu_bo_get_tiling_flags(abo, &tiling_flags);
 amdgpu_bo_unreserve(abo);

 pipe_config = AMDGPU_TILING_GET(tiling_flags, PIPE_CONFIG);

 switch (target_fb->format->format) {
 case 134:
  fb_format = ((GRPH_DEPTH_8BPP << GRPH_CONTROL__GRPH_DEPTH__SHIFT) |
        (GRPH_FORMAT_INDEXED << GRPH_CONTROL__GRPH_FORMAT__SHIFT));
  break;
 case 129:
 case 140:
  fb_format = ((GRPH_DEPTH_16BPP << GRPH_CONTROL__GRPH_DEPTH__SHIFT) |
        (GRPH_FORMAT_ARGB4444 << GRPH_CONTROL__GRPH_FORMAT__SHIFT));



  break;
 case 131:
 case 142:
  fb_format = ((GRPH_DEPTH_16BPP << GRPH_CONTROL__GRPH_DEPTH__SHIFT) |
        (GRPH_FORMAT_ARGB1555 << GRPH_CONTROL__GRPH_FORMAT__SHIFT));



  break;
 case 135:
 case 137:
  fb_format = ((GRPH_DEPTH_16BPP << GRPH_CONTROL__GRPH_DEPTH__SHIFT) |
        (GRPH_FORMAT_BGRA5551 << GRPH_CONTROL__GRPH_FORMAT__SHIFT));



  break;
 case 133:
  fb_format = ((GRPH_DEPTH_16BPP << GRPH_CONTROL__GRPH_DEPTH__SHIFT) |
        (GRPH_FORMAT_ARGB565 << GRPH_CONTROL__GRPH_FORMAT__SHIFT));



  break;
 case 128:
 case 139:
  fb_format = ((GRPH_DEPTH_32BPP << GRPH_CONTROL__GRPH_DEPTH__SHIFT) |
        (GRPH_FORMAT_ARGB8888 << GRPH_CONTROL__GRPH_FORMAT__SHIFT));



  break;
 case 130:
 case 141:
  fb_format = ((GRPH_DEPTH_32BPP << GRPH_CONTROL__GRPH_DEPTH__SHIFT) |
        (GRPH_FORMAT_ARGB2101010 << GRPH_CONTROL__GRPH_FORMAT__SHIFT));




  bypass_lut = 1;
  break;
 case 136:
 case 138:
  fb_format = ((GRPH_DEPTH_32BPP << GRPH_CONTROL__GRPH_DEPTH__SHIFT) |
        (GRPH_FORMAT_BGRA1010102 << GRPH_CONTROL__GRPH_FORMAT__SHIFT));




  bypass_lut = 1;
  break;
 case 132:
 case 143:
  fb_format = ((GRPH_DEPTH_32BPP << GRPH_CONTROL__GRPH_DEPTH__SHIFT) |
               (GRPH_FORMAT_ARGB8888 << GRPH_CONTROL__GRPH_FORMAT__SHIFT));
  fb_swap = ((GRPH_RED_SEL_B << GRPH_SWAP_CNTL__GRPH_RED_CROSSBAR__SHIFT) |
             (GRPH_BLUE_SEL_R << GRPH_SWAP_CNTL__GRPH_BLUE_CROSSBAR__SHIFT));



  break;
 default:
  DRM_ERROR("Unsupported screen format %s\n",
            drm_get_format_name(target_fb->format->format, &format_name));
  return -EINVAL;
 }

 if (AMDGPU_TILING_GET(tiling_flags, ARRAY_MODE) == ARRAY_2D_TILED_THIN1) {
  unsigned bankw, bankh, mtaspect, tile_split, num_banks;

  bankw = AMDGPU_TILING_GET(tiling_flags, BANK_WIDTH);
  bankh = AMDGPU_TILING_GET(tiling_flags, BANK_HEIGHT);
  mtaspect = AMDGPU_TILING_GET(tiling_flags, MACRO_TILE_ASPECT);
  tile_split = AMDGPU_TILING_GET(tiling_flags, TILE_SPLIT);
  num_banks = AMDGPU_TILING_GET(tiling_flags, NUM_BANKS);

  fb_format |= (num_banks << GRPH_CONTROL__GRPH_NUM_BANKS__SHIFT);
  fb_format |= (GRPH_ARRAY_2D_TILED_THIN1 << GRPH_CONTROL__GRPH_ARRAY_MODE__SHIFT);
  fb_format |= (tile_split << GRPH_CONTROL__GRPH_TILE_SPLIT__SHIFT);
  fb_format |= (bankw << GRPH_CONTROL__GRPH_BANK_WIDTH__SHIFT);
  fb_format |= (bankh << GRPH_CONTROL__GRPH_BANK_HEIGHT__SHIFT);
  fb_format |= (mtaspect << GRPH_CONTROL__GRPH_MACRO_TILE_ASPECT__SHIFT);
  fb_format |= (DISPLAY_MICRO_TILING << GRPH_CONTROL__GRPH_MICRO_TILE_MODE__SHIFT);
 } else if (AMDGPU_TILING_GET(tiling_flags, ARRAY_MODE) == ARRAY_1D_TILED_THIN1) {
  fb_format |= (GRPH_ARRAY_1D_TILED_THIN1 << GRPH_CONTROL__GRPH_ARRAY_MODE__SHIFT);
 }

 fb_format |= (pipe_config << GRPH_CONTROL__GRPH_PIPE_CONFIG__SHIFT);

 dce_v8_0_vga_enable(crtc, 0);




 WREG32(mmGRPH_FLIP_CONTROL + amdgpu_crtc->crtc_offset, 0);

 WREG32(mmGRPH_PRIMARY_SURFACE_ADDRESS_HIGH + amdgpu_crtc->crtc_offset,
        upper_32_bits(fb_location));
 WREG32(mmGRPH_SECONDARY_SURFACE_ADDRESS_HIGH + amdgpu_crtc->crtc_offset,
        upper_32_bits(fb_location));
 WREG32(mmGRPH_PRIMARY_SURFACE_ADDRESS + amdgpu_crtc->crtc_offset,
        (u32)fb_location & GRPH_PRIMARY_SURFACE_ADDRESS__GRPH_PRIMARY_SURFACE_ADDRESS_MASK);
 WREG32(mmGRPH_SECONDARY_SURFACE_ADDRESS + amdgpu_crtc->crtc_offset,
        (u32) fb_location & GRPH_SECONDARY_SURFACE_ADDRESS__GRPH_SECONDARY_SURFACE_ADDRESS_MASK);
 WREG32(mmGRPH_CONTROL + amdgpu_crtc->crtc_offset, fb_format);
 WREG32(mmGRPH_SWAP_CNTL + amdgpu_crtc->crtc_offset, fb_swap);






 WREG32_P(mmGRPH_LUT_10BIT_BYPASS_CONTROL + amdgpu_crtc->crtc_offset,
   (bypass_lut ? LUT_10BIT_BYPASS_EN : 0),
   ~LUT_10BIT_BYPASS_EN);

 if (bypass_lut)
  DRM_DEBUG_KMS("Bypassing hardware LUT due to 10 bit fb scanout.\n");

 WREG32(mmGRPH_SURFACE_OFFSET_X + amdgpu_crtc->crtc_offset, 0);
 WREG32(mmGRPH_SURFACE_OFFSET_Y + amdgpu_crtc->crtc_offset, 0);
 WREG32(mmGRPH_X_START + amdgpu_crtc->crtc_offset, 0);
 WREG32(mmGRPH_Y_START + amdgpu_crtc->crtc_offset, 0);
 WREG32(mmGRPH_X_END + amdgpu_crtc->crtc_offset, target_fb->width);
 WREG32(mmGRPH_Y_END + amdgpu_crtc->crtc_offset, target_fb->height);

 fb_pitch_pixels = target_fb->pitches[0] / target_fb->format->cpp[0];
 WREG32(mmGRPH_PITCH + amdgpu_crtc->crtc_offset, fb_pitch_pixels);

 dce_v8_0_grph_enable(crtc, 1);

 WREG32(mmLB_DESKTOP_HEIGHT + amdgpu_crtc->crtc_offset,
        target_fb->height);

 x &= ~3;
 y &= ~1;
 WREG32(mmVIEWPORT_START + amdgpu_crtc->crtc_offset,
        (x << 16) | y);
 viewport_w = crtc->mode.hdisplay;
 viewport_h = (crtc->mode.vdisplay + 1) & ~1;
 WREG32(mmVIEWPORT_SIZE + amdgpu_crtc->crtc_offset,
        (viewport_w << 16) | viewport_h);


 WREG32(mmMASTER_UPDATE_MODE + amdgpu_crtc->crtc_offset, 0);

 if (!atomic && fb && fb != crtc->primary->fb) {
  abo = gem_to_amdgpu_bo(fb->obj[0]);
  r = amdgpu_bo_reserve(abo, 1);
  if (unlikely(r != 0))
   return r;
  amdgpu_bo_unpin(abo);
  amdgpu_bo_unreserve(abo);
 }


 dce_v8_0_bandwidth_update(adev);

 return 0;
}
