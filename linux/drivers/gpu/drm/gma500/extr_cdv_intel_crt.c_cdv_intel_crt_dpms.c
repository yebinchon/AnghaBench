
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {int dummy; } ;


 int ADPA ;
 int ADPA_DAC_ENABLE ;
 int ADPA_HSYNC_CNTL_DISABLE ;
 int ADPA_VSYNC_CNTL_DISABLE ;




 int REG_READ (int) ;
 int REG_WRITE (int,int) ;

__attribute__((used)) static void cdv_intel_crt_dpms(struct drm_encoder *encoder, int mode)
{
 struct drm_device *dev = encoder->dev;
 u32 temp, reg;
 reg = ADPA;

 temp = REG_READ(reg);
 temp &= ~(ADPA_HSYNC_CNTL_DISABLE | ADPA_VSYNC_CNTL_DISABLE);
 temp &= ~ADPA_DAC_ENABLE;

 switch (mode) {
 case 130:
  temp |= ADPA_DAC_ENABLE;
  break;
 case 129:
  temp |= ADPA_DAC_ENABLE | ADPA_HSYNC_CNTL_DISABLE;
  break;
 case 128:
  temp |= ADPA_DAC_ENABLE | ADPA_VSYNC_CNTL_DISABLE;
  break;
 case 131:
  temp |= ADPA_HSYNC_CNTL_DISABLE | ADPA_VSYNC_CNTL_DISABLE;
  break;
 }

 REG_WRITE(reg, temp);
}
