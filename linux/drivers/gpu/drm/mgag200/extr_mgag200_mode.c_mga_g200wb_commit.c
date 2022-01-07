
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
 int MGA1064_GEN_IO_DATA ;
 int MGA1064_REMHEADCTL2 ;
 int MGA1064_SPAREREG ;
 int MGAREG_CRTCEXT_DATA ;
 int MGAREG_CRTCEXT_INDEX ;
 int RREG8 (int ) ;
 int WREG8 (int ,int) ;
 int WREG_DAC (int,int) ;
 int udelay (int) ;

__attribute__((used)) static void mga_g200wb_commit(struct drm_crtc *crtc)
{
 u8 tmp;
 struct mga_device *mdev = crtc->dev->dev_private;


 WREG8(MGAREG_CRTCEXT_INDEX, 1);
 tmp = RREG8(MGAREG_CRTCEXT_DATA);
 WREG8(MGAREG_CRTCEXT_DATA, tmp | 0x88);


 WREG8(DAC_INDEX, MGA1064_REMHEADCTL2);
 tmp = RREG8(DAC_DATA);
 tmp |= 0x8;
 WREG8(DAC_DATA, tmp);


 udelay(10);


 tmp &= ~0x08;
 WREG8(DAC_INDEX, MGA1064_REMHEADCTL2);
 WREG8(DAC_DATA, tmp);


 WREG8(DAC_INDEX, MGA1064_SPAREREG);
 tmp = RREG8(DAC_DATA);
 tmp &= ~0x80;
 WREG8(DAC_DATA, tmp);


 WREG8(DAC_INDEX, MGA1064_GEN_IO_DATA);
 tmp = RREG8(DAC_DATA);
 tmp &= ~0x10;
 WREG_DAC(MGA1064_GEN_IO_DATA, tmp);
}
