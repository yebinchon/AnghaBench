
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
typedef int u32 ;
struct drm_gem_object {int dummy; } ;
struct drm_framebuffer {int width; int height; int* pitches; struct drm_gem_object** obj; TYPE_3__* format; } ;
struct drm_format_name_buf {int dummy; } ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct TYPE_4__ {int hdisplay; int vdisplay; } ;
struct drm_crtc {TYPE_2__* primary; TYPE_1__ mode; struct drm_device* dev; } ;
struct amdgpu_device {int dummy; } ;
struct amdgpu_crtc {scalar_t__ crtc_offset; } ;
struct amdgpu_bo {int dummy; } ;
struct TYPE_6__ {int format; int* cpp; } ;
struct TYPE_5__ {struct drm_framebuffer* fb; } ;


 int ADDR_SURF_MICRO_TILING_DISPLAY ;
 int AMDGPU_GEM_DOMAIN_VRAM ;
 int AMDGPU_TILING_GET (scalar_t__,int ) ;
 int ARRAY_1D_TILED_THIN1 ;
 int ARRAY_2D_TILED_THIN1 ;
 int ARRAY_MODE ;
 int BANK_HEIGHT ;
 int BANK_WIDTH ;
 int DRM_DEBUG_KMS (char*) ;
 int DRM_ERROR (char*,int ) ;
 int EINVAL ;
 int ENDIAN_8IN16 ;
 int ENDIAN_8IN32 ;
 int ENDIAN_NONE ;
 int GRPH_ARRAY_MODE ;
 int GRPH_BANK_HEIGHT ;
 int GRPH_BANK_WIDTH ;
 int GRPH_BLUE_CROSSBAR ;
 int GRPH_CONTROL ;
 int GRPH_DEPTH ;
 int GRPH_ENDIAN_SWAP ;
 int GRPH_FLIP_CONTROL ;
 int GRPH_FORMAT ;
 int GRPH_LUT_10BIT_BYPASS ;
 int GRPH_LUT_10BIT_BYPASS_EN ;
 int GRPH_MACRO_TILE_ASPECT ;
 int GRPH_MICRO_TILE_MODE ;
 int GRPH_NUM_BANKS ;
 int GRPH_PIPE_CONFIG ;
 int GRPH_PRIMARY_SURFACE_ADDRESS__GRPH_PRIMARY_SURFACE_ADDRESS_MASK ;
 int GRPH_RED_CROSSBAR ;
 int GRPH_SECONDARY_SURFACE_ADDRESS__GRPH_SECONDARY_SURFACE_ADDRESS_MASK ;
 int GRPH_SURFACE_UPDATE_H_RETRACE_EN ;
 int GRPH_SWAP_CNTL ;
 int GRPH_TILE_SPLIT ;
 int MACRO_TILE_ASPECT ;
 int NUM_BANKS ;
 int PIPE_CONFIG ;
 int REG_SET_FIELD (int,int ,int ,int) ;
 int RREG32 (scalar_t__) ;
 int TILE_SPLIT ;
 int WREG32 (scalar_t__,int) ;
 int amdgpu_bo_get_tiling_flags (struct amdgpu_bo*,scalar_t__*) ;
 scalar_t__ amdgpu_bo_gpu_offset (struct amdgpu_bo*) ;
 int amdgpu_bo_pin (struct amdgpu_bo*,int ) ;
 int amdgpu_bo_reserve (struct amdgpu_bo*,int) ;
 int amdgpu_bo_unpin (struct amdgpu_bo*) ;
 int amdgpu_bo_unreserve (struct amdgpu_bo*) ;
 int dce_v11_0_bandwidth_update (struct amdgpu_device*) ;
 int dce_v11_0_grph_enable (struct drm_crtc*,int) ;
 int dce_v11_0_vga_enable (struct drm_crtc*,int) ;
 int drm_get_format_name (int,struct drm_format_name_buf*) ;
 struct amdgpu_bo* gem_to_amdgpu_bo (struct drm_gem_object*) ;
 scalar_t__ mmCRTC_MASTER_UPDATE_MODE ;
 scalar_t__ mmGRPH_CONTROL ;
 scalar_t__ mmGRPH_FLIP_CONTROL ;
 scalar_t__ mmGRPH_LUT_10BIT_BYPASS ;
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
 scalar_t__ mmVIEWPORT_SIZE ;
 scalar_t__ mmVIEWPORT_START ;
 struct amdgpu_crtc* to_amdgpu_crtc (struct drm_crtc*) ;
 scalar_t__ unlikely (int) ;
 int upper_32_bits (scalar_t__) ;

__attribute__((used)) static int dce_v11_0_crtc_do_set_base(struct drm_crtc *crtc,
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
 u32 fb_swap = REG_SET_FIELD(0, GRPH_SWAP_CNTL, GRPH_ENDIAN_SWAP, ENDIAN_NONE);
 u32 pipe_config;
 u32 tmp, viewport_w, viewport_h;
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
  fb_format = REG_SET_FIELD(0, GRPH_CONTROL, GRPH_DEPTH, 0);
  fb_format = REG_SET_FIELD(fb_format, GRPH_CONTROL, GRPH_FORMAT, 0);
  break;
 case 129:
 case 140:
  fb_format = REG_SET_FIELD(0, GRPH_CONTROL, GRPH_DEPTH, 1);
  fb_format = REG_SET_FIELD(fb_format, GRPH_CONTROL, GRPH_FORMAT, 2);




  break;
 case 131:
 case 142:
  fb_format = REG_SET_FIELD(0, GRPH_CONTROL, GRPH_DEPTH, 1);
  fb_format = REG_SET_FIELD(fb_format, GRPH_CONTROL, GRPH_FORMAT, 0);




  break;
 case 135:
 case 137:
  fb_format = REG_SET_FIELD(0, GRPH_CONTROL, GRPH_DEPTH, 1);
  fb_format = REG_SET_FIELD(fb_format, GRPH_CONTROL, GRPH_FORMAT, 5);




  break;
 case 133:
  fb_format = REG_SET_FIELD(0, GRPH_CONTROL, GRPH_DEPTH, 1);
  fb_format = REG_SET_FIELD(fb_format, GRPH_CONTROL, GRPH_FORMAT, 1);




  break;
 case 128:
 case 139:
  fb_format = REG_SET_FIELD(0, GRPH_CONTROL, GRPH_DEPTH, 2);
  fb_format = REG_SET_FIELD(fb_format, GRPH_CONTROL, GRPH_FORMAT, 0);




  break;
 case 130:
 case 141:
  fb_format = REG_SET_FIELD(0, GRPH_CONTROL, GRPH_DEPTH, 2);
  fb_format = REG_SET_FIELD(fb_format, GRPH_CONTROL, GRPH_FORMAT, 1);





  bypass_lut = 1;
  break;
 case 136:
 case 138:
  fb_format = REG_SET_FIELD(0, GRPH_CONTROL, GRPH_DEPTH, 2);
  fb_format = REG_SET_FIELD(fb_format, GRPH_CONTROL, GRPH_FORMAT, 4);





  bypass_lut = 1;
  break;
 case 132:
 case 143:
  fb_format = REG_SET_FIELD(0, GRPH_CONTROL, GRPH_DEPTH, 2);
  fb_format = REG_SET_FIELD(fb_format, GRPH_CONTROL, GRPH_FORMAT, 0);
  fb_swap = REG_SET_FIELD(fb_swap, GRPH_SWAP_CNTL, GRPH_RED_CROSSBAR, 2);
  fb_swap = REG_SET_FIELD(fb_swap, GRPH_SWAP_CNTL, GRPH_BLUE_CROSSBAR, 2);




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

  fb_format = REG_SET_FIELD(fb_format, GRPH_CONTROL, GRPH_NUM_BANKS, num_banks);
  fb_format = REG_SET_FIELD(fb_format, GRPH_CONTROL, GRPH_ARRAY_MODE,
       ARRAY_2D_TILED_THIN1);
  fb_format = REG_SET_FIELD(fb_format, GRPH_CONTROL, GRPH_TILE_SPLIT,
       tile_split);
  fb_format = REG_SET_FIELD(fb_format, GRPH_CONTROL, GRPH_BANK_WIDTH, bankw);
  fb_format = REG_SET_FIELD(fb_format, GRPH_CONTROL, GRPH_BANK_HEIGHT, bankh);
  fb_format = REG_SET_FIELD(fb_format, GRPH_CONTROL, GRPH_MACRO_TILE_ASPECT,
       mtaspect);
  fb_format = REG_SET_FIELD(fb_format, GRPH_CONTROL, GRPH_MICRO_TILE_MODE,
       ADDR_SURF_MICRO_TILING_DISPLAY);
 } else if (AMDGPU_TILING_GET(tiling_flags, ARRAY_MODE) == ARRAY_1D_TILED_THIN1) {
  fb_format = REG_SET_FIELD(fb_format, GRPH_CONTROL, GRPH_ARRAY_MODE,
       ARRAY_1D_TILED_THIN1);
 }

 fb_format = REG_SET_FIELD(fb_format, GRPH_CONTROL, GRPH_PIPE_CONFIG,
      pipe_config);

 dce_v11_0_vga_enable(crtc, 0);




 tmp = RREG32(mmGRPH_FLIP_CONTROL + amdgpu_crtc->crtc_offset);
 tmp = REG_SET_FIELD(tmp, GRPH_FLIP_CONTROL,
       GRPH_SURFACE_UPDATE_H_RETRACE_EN, 0);
 WREG32(mmGRPH_FLIP_CONTROL + amdgpu_crtc->crtc_offset, tmp);

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






 tmp = RREG32(mmGRPH_LUT_10BIT_BYPASS + amdgpu_crtc->crtc_offset);
 if (bypass_lut)
  tmp = REG_SET_FIELD(tmp, GRPH_LUT_10BIT_BYPASS, GRPH_LUT_10BIT_BYPASS_EN, 1);
 else
  tmp = REG_SET_FIELD(tmp, GRPH_LUT_10BIT_BYPASS, GRPH_LUT_10BIT_BYPASS_EN, 0);
 WREG32(mmGRPH_LUT_10BIT_BYPASS + amdgpu_crtc->crtc_offset, tmp);

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

 dce_v11_0_grph_enable(crtc, 1);

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


 WREG32(mmCRTC_MASTER_UPDATE_MODE + amdgpu_crtc->crtc_offset, 0);

 if (!atomic && fb && fb != crtc->primary->fb) {
  abo = gem_to_amdgpu_bo(fb->obj[0]);
  r = amdgpu_bo_reserve(abo, 1);
  if (unlikely(r != 0))
   return r;
  amdgpu_bo_unpin(abo);
  amdgpu_bo_unreserve(abo);
 }


 dce_v11_0_bandwidth_update(adev);

 return 0;
}
