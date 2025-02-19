
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct radeon_device {int dummy; } ;
struct radeon_crtc {int crtc_id; scalar_t__ crtc_offset; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct drm_crtc {int gamma_size; int * gamma_store; struct drm_device* dev; } ;


 scalar_t__ AVIVO_D1GRPH_LUT_SEL ;
 scalar_t__ AVIVO_DC_LUTA_BLACK_OFFSET_BLUE ;
 scalar_t__ AVIVO_DC_LUTA_BLACK_OFFSET_GREEN ;
 scalar_t__ AVIVO_DC_LUTA_BLACK_OFFSET_RED ;
 scalar_t__ AVIVO_DC_LUTA_CONTROL ;
 scalar_t__ AVIVO_DC_LUTA_WHITE_OFFSET_BLUE ;
 scalar_t__ AVIVO_DC_LUTA_WHITE_OFFSET_GREEN ;
 scalar_t__ AVIVO_DC_LUTA_WHITE_OFFSET_RED ;
 scalar_t__ AVIVO_DC_LUT_30_COLOR ;
 int AVIVO_DC_LUT_RW_INDEX ;
 scalar_t__ AVIVO_DC_LUT_RW_MODE ;
 scalar_t__ AVIVO_DC_LUT_RW_SELECT ;
 scalar_t__ AVIVO_DC_LUT_WRITE_EN_MASK ;
 int DRM_DEBUG_KMS (char*,int) ;
 int WREG32 (scalar_t__,int) ;
 int WREG32_P (scalar_t__,int,int) ;
 int WREG8 (int ,int ) ;
 struct radeon_crtc* to_radeon_crtc (struct drm_crtc*) ;

__attribute__((used)) static void avivo_crtc_load_lut(struct drm_crtc *crtc)
{
 struct radeon_crtc *radeon_crtc = to_radeon_crtc(crtc);
 struct drm_device *dev = crtc->dev;
 struct radeon_device *rdev = dev->dev_private;
 u16 *r, *g, *b;
 int i;

 DRM_DEBUG_KMS("%d\n", radeon_crtc->crtc_id);
 WREG32(AVIVO_DC_LUTA_CONTROL + radeon_crtc->crtc_offset, 0);

 WREG32(AVIVO_DC_LUTA_BLACK_OFFSET_BLUE + radeon_crtc->crtc_offset, 0);
 WREG32(AVIVO_DC_LUTA_BLACK_OFFSET_GREEN + radeon_crtc->crtc_offset, 0);
 WREG32(AVIVO_DC_LUTA_BLACK_OFFSET_RED + radeon_crtc->crtc_offset, 0);

 WREG32(AVIVO_DC_LUTA_WHITE_OFFSET_BLUE + radeon_crtc->crtc_offset, 0xffff);
 WREG32(AVIVO_DC_LUTA_WHITE_OFFSET_GREEN + radeon_crtc->crtc_offset, 0xffff);
 WREG32(AVIVO_DC_LUTA_WHITE_OFFSET_RED + radeon_crtc->crtc_offset, 0xffff);

 WREG32(AVIVO_DC_LUT_RW_SELECT, radeon_crtc->crtc_id);
 WREG32(AVIVO_DC_LUT_RW_MODE, 0);
 WREG32(AVIVO_DC_LUT_WRITE_EN_MASK, 0x0000003f);

 WREG8(AVIVO_DC_LUT_RW_INDEX, 0);
 r = crtc->gamma_store;
 g = r + crtc->gamma_size;
 b = g + crtc->gamma_size;
 for (i = 0; i < 256; i++) {
  WREG32(AVIVO_DC_LUT_30_COLOR,
         ((*r++ & 0xffc0) << 14) |
         ((*g++ & 0xffc0) << 4) |
         (*b++ >> 6));
 }


 WREG32_P(AVIVO_D1GRPH_LUT_SEL + radeon_crtc->crtc_offset, radeon_crtc->crtc_id, ~1);
}
