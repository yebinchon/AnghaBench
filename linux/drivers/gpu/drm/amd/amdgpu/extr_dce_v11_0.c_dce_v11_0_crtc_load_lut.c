
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct drm_crtc {int gamma_size; int * gamma_store; struct drm_device* dev; } ;
struct amdgpu_device {int dummy; } ;
struct amdgpu_crtc {scalar_t__ crtc_offset; int crtc_id; } ;


 int ALPHA_CONTROL ;
 int CURSOR2_DEGAMMA_MODE ;
 int CURSOR_ALPHA_BLND_ENA ;
 int CURSOR_DEGAMMA_MODE ;
 int DEGAMMA_CONTROL ;
 int DRM_DEBUG_KMS (char*,int ) ;
 int GAMUT_REMAP_CONTROL ;
 int GRPH_DEGAMMA_MODE ;
 int GRPH_GAMUT_REMAP_MODE ;
 int GRPH_INPUT_GAMMA_MODE ;
 int GRPH_PRESCALE_BYPASS ;
 int GRPH_REGAMMA_MODE ;
 int INPUT_CSC_CONTROL ;
 int INPUT_CSC_GRPH_MODE ;
 int INPUT_GAMMA_CONTROL ;
 int OUTPUT_CSC_CONTROL ;
 int OUTPUT_CSC_GRPH_MODE ;
 int PRESCALE_GRPH_CONTROL ;
 int REGAMMA_CONTROL ;
 int REG_SET_FIELD (int,int ,int ,int) ;
 int RREG32 (scalar_t__) ;
 int WREG32 (scalar_t__,int) ;
 scalar_t__ mmALPHA_CONTROL ;
 scalar_t__ mmDC_LUT_30_COLOR ;
 scalar_t__ mmDC_LUT_BLACK_OFFSET_BLUE ;
 scalar_t__ mmDC_LUT_BLACK_OFFSET_GREEN ;
 scalar_t__ mmDC_LUT_BLACK_OFFSET_RED ;
 scalar_t__ mmDC_LUT_CONTROL ;
 scalar_t__ mmDC_LUT_RW_INDEX ;
 scalar_t__ mmDC_LUT_RW_MODE ;
 scalar_t__ mmDC_LUT_WHITE_OFFSET_BLUE ;
 scalar_t__ mmDC_LUT_WHITE_OFFSET_GREEN ;
 scalar_t__ mmDC_LUT_WHITE_OFFSET_RED ;
 scalar_t__ mmDC_LUT_WRITE_EN_MASK ;
 scalar_t__ mmDEGAMMA_CONTROL ;
 scalar_t__ mmDENORM_CONTROL ;
 scalar_t__ mmGAMUT_REMAP_CONTROL ;
 scalar_t__ mmINPUT_CSC_CONTROL ;
 scalar_t__ mmINPUT_GAMMA_CONTROL ;
 scalar_t__ mmOUTPUT_CSC_CONTROL ;
 scalar_t__ mmPRESCALE_GRPH_CONTROL ;
 scalar_t__ mmREGAMMA_CONTROL ;
 struct amdgpu_crtc* to_amdgpu_crtc (struct drm_crtc*) ;

__attribute__((used)) static void dce_v11_0_crtc_load_lut(struct drm_crtc *crtc)
{
 struct amdgpu_crtc *amdgpu_crtc = to_amdgpu_crtc(crtc);
 struct drm_device *dev = crtc->dev;
 struct amdgpu_device *adev = dev->dev_private;
 u16 *r, *g, *b;
 int i;
 u32 tmp;

 DRM_DEBUG_KMS("%d\n", amdgpu_crtc->crtc_id);

 tmp = RREG32(mmINPUT_CSC_CONTROL + amdgpu_crtc->crtc_offset);
 tmp = REG_SET_FIELD(tmp, INPUT_CSC_CONTROL, INPUT_CSC_GRPH_MODE, 0);
 WREG32(mmINPUT_CSC_CONTROL + amdgpu_crtc->crtc_offset, tmp);

 tmp = RREG32(mmPRESCALE_GRPH_CONTROL + amdgpu_crtc->crtc_offset);
 tmp = REG_SET_FIELD(tmp, PRESCALE_GRPH_CONTROL, GRPH_PRESCALE_BYPASS, 1);
 WREG32(mmPRESCALE_GRPH_CONTROL + amdgpu_crtc->crtc_offset, tmp);

 tmp = RREG32(mmINPUT_GAMMA_CONTROL + amdgpu_crtc->crtc_offset);
 tmp = REG_SET_FIELD(tmp, INPUT_GAMMA_CONTROL, GRPH_INPUT_GAMMA_MODE, 0);
 WREG32(mmINPUT_GAMMA_CONTROL + amdgpu_crtc->crtc_offset, tmp);

 WREG32(mmDC_LUT_CONTROL + amdgpu_crtc->crtc_offset, 0);

 WREG32(mmDC_LUT_BLACK_OFFSET_BLUE + amdgpu_crtc->crtc_offset, 0);
 WREG32(mmDC_LUT_BLACK_OFFSET_GREEN + amdgpu_crtc->crtc_offset, 0);
 WREG32(mmDC_LUT_BLACK_OFFSET_RED + amdgpu_crtc->crtc_offset, 0);

 WREG32(mmDC_LUT_WHITE_OFFSET_BLUE + amdgpu_crtc->crtc_offset, 0xffff);
 WREG32(mmDC_LUT_WHITE_OFFSET_GREEN + amdgpu_crtc->crtc_offset, 0xffff);
 WREG32(mmDC_LUT_WHITE_OFFSET_RED + amdgpu_crtc->crtc_offset, 0xffff);

 WREG32(mmDC_LUT_RW_MODE + amdgpu_crtc->crtc_offset, 0);
 WREG32(mmDC_LUT_WRITE_EN_MASK + amdgpu_crtc->crtc_offset, 0x00000007);

 WREG32(mmDC_LUT_RW_INDEX + amdgpu_crtc->crtc_offset, 0);
 r = crtc->gamma_store;
 g = r + crtc->gamma_size;
 b = g + crtc->gamma_size;
 for (i = 0; i < 256; i++) {
  WREG32(mmDC_LUT_30_COLOR + amdgpu_crtc->crtc_offset,
         ((*r++ & 0xffc0) << 14) |
         ((*g++ & 0xffc0) << 4) |
         (*b++ >> 6));
 }

 tmp = RREG32(mmDEGAMMA_CONTROL + amdgpu_crtc->crtc_offset);
 tmp = REG_SET_FIELD(tmp, DEGAMMA_CONTROL, GRPH_DEGAMMA_MODE, 0);
 tmp = REG_SET_FIELD(tmp, DEGAMMA_CONTROL, CURSOR_DEGAMMA_MODE, 0);
 tmp = REG_SET_FIELD(tmp, DEGAMMA_CONTROL, CURSOR2_DEGAMMA_MODE, 0);
 WREG32(mmDEGAMMA_CONTROL + amdgpu_crtc->crtc_offset, tmp);

 tmp = RREG32(mmGAMUT_REMAP_CONTROL + amdgpu_crtc->crtc_offset);
 tmp = REG_SET_FIELD(tmp, GAMUT_REMAP_CONTROL, GRPH_GAMUT_REMAP_MODE, 0);
 WREG32(mmGAMUT_REMAP_CONTROL + amdgpu_crtc->crtc_offset, tmp);

 tmp = RREG32(mmREGAMMA_CONTROL + amdgpu_crtc->crtc_offset);
 tmp = REG_SET_FIELD(tmp, REGAMMA_CONTROL, GRPH_REGAMMA_MODE, 0);
 WREG32(mmREGAMMA_CONTROL + amdgpu_crtc->crtc_offset, tmp);

 tmp = RREG32(mmOUTPUT_CSC_CONTROL + amdgpu_crtc->crtc_offset);
 tmp = REG_SET_FIELD(tmp, OUTPUT_CSC_CONTROL, OUTPUT_CSC_GRPH_MODE, 0);
 WREG32(mmOUTPUT_CSC_CONTROL + amdgpu_crtc->crtc_offset, tmp);


 WREG32(mmDENORM_CONTROL + amdgpu_crtc->crtc_offset, 0);



 tmp = RREG32(mmALPHA_CONTROL + amdgpu_crtc->crtc_offset);
 tmp = REG_SET_FIELD(tmp, ALPHA_CONTROL, CURSOR_ALPHA_BLND_ENA, 1);
 WREG32(mmALPHA_CONTROL + amdgpu_crtc->crtc_offset, tmp);
}
