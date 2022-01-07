
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mga_device {int dummy; } ;
struct drm_crtc {TYPE_1__* dev; } ;
struct TYPE_2__ {struct mga_device* dev_private; } ;


 int DAC_DATA ;
 int DAC_INDEX ;
 int MGA1064_GEN_IO_CTL ;
 int MGA1064_GEN_IO_DATA ;
 int MGA1064_SPAREREG ;
 int RREG8 (int ) ;
 int WREG8 (int ,int ) ;
 int WREG_DAC (int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void mga_g200wb_prepare(struct drm_crtc *crtc)
{
 struct mga_device *mdev = crtc->dev->dev_private;
 u8 tmp;
 int iter_max;




 WREG8(DAC_INDEX, MGA1064_GEN_IO_CTL);
 tmp = RREG8(DAC_DATA);
 tmp |= 0x10;
 WREG_DAC(MGA1064_GEN_IO_CTL, tmp);


 WREG8(DAC_INDEX, MGA1064_GEN_IO_DATA);
 tmp = RREG8(DAC_DATA);
 tmp |= 0x10;
 WREG_DAC(MGA1064_GEN_IO_DATA, tmp);




 WREG8(DAC_INDEX, MGA1064_SPAREREG);
 tmp = RREG8(DAC_DATA);
 tmp |= 0x80;
 WREG_DAC(MGA1064_SPAREREG, tmp);




 iter_max = 300;
 while (!(tmp & 0x1) && iter_max) {
  WREG8(DAC_INDEX, MGA1064_SPAREREG);
  tmp = RREG8(DAC_DATA);
  udelay(1000);
  iter_max--;
 }





 if (iter_max) {
  iter_max = 300;
  while ((tmp & 0x2) && iter_max) {
   WREG8(DAC_INDEX, MGA1064_SPAREREG);
   tmp = RREG8(DAC_DATA);
   udelay(1000);
   iter_max--;
  }
 }
}
