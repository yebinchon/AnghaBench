
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mga_device {scalar_t__ type; } ;
struct drm_device {struct mga_device* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;


 scalar_t__ G200_EW3 ;
 scalar_t__ G200_SE_A ;
 scalar_t__ G200_SE_B ;
 scalar_t__ G200_WB ;
 int MGAREG_CRTC_DATA ;
 int MGAREG_CRTC_INDEX ;
 int MGAREG_SEQ_DATA ;
 int MGAREG_SEQ_INDEX ;
 int RREG8 (int ) ;
 int WREG8 (int ,int) ;
 int WREG_CRT (int,int) ;
 int WREG_SEQ (int,int) ;
 int mga_g200wb_prepare (struct drm_crtc*) ;
 int msleep (int) ;

__attribute__((used)) static void mga_crtc_prepare(struct drm_crtc *crtc)
{
 struct drm_device *dev = crtc->dev;
 struct mga_device *mdev = dev->dev_private;
 u8 tmp;



 WREG8(MGAREG_CRTC_INDEX, 0x11);
 tmp = RREG8(MGAREG_CRTC_DATA);
 WREG_CRT(0x11, tmp | 0x80);

 if (mdev->type == G200_SE_A || mdev->type == G200_SE_B) {
  WREG_SEQ(0, 1);
  msleep(50);
  WREG_SEQ(1, 0x20);
  msleep(20);
 } else {
  WREG8(MGAREG_SEQ_INDEX, 0x1);
  tmp = RREG8(MGAREG_SEQ_DATA);


  WREG_SEQ(0, 1);
  WREG_SEQ(1, tmp | 0x20);
 }

 if (mdev->type == G200_WB || mdev->type == G200_EW3)
  mga_g200wb_prepare(crtc);

 WREG_CRT(17, 0);
}
