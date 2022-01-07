
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mga_device {int suspended; } ;
struct drm_device {struct mga_device* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;






 int MGAREG_CRTCEXT_DATA ;
 int MGAREG_CRTCEXT_INDEX ;
 int MGAREG_SEQ_DATA ;
 int MGAREG_SEQ_INDEX ;
 int RREG8 (int ) ;
 int WREG8 (int ,int) ;
 int drm_helper_resume_force_mode (struct drm_device*) ;
 int mga_crtc_load_lut (struct drm_crtc*) ;
 int mga_resume (struct drm_crtc*) ;
 int mga_suspend (struct drm_crtc*) ;
 int mga_wait_busy (struct mga_device*) ;
 int mga_wait_vsync (struct mga_device*) ;
 int msleep (int) ;

__attribute__((used)) static void mga_crtc_dpms(struct drm_crtc *crtc, int mode)
{
 struct drm_device *dev = crtc->dev;
 struct mga_device *mdev = dev->dev_private;
 u8 seq1 = 0, crtcext1 = 0;

 switch (mode) {
 case 130:
  seq1 = 0;
  crtcext1 = 0;
  mga_crtc_load_lut(crtc);
  break;
 case 129:
  seq1 = 0x20;
  crtcext1 = 0x10;
  break;
 case 128:
  seq1 = 0x20;
  crtcext1 = 0x20;
  break;
 case 131:
  seq1 = 0x20;
  crtcext1 = 0x30;
  break;
 }






 WREG8(MGAREG_SEQ_INDEX, 0x01);
 seq1 |= RREG8(MGAREG_SEQ_DATA) & ~0x20;
 mga_wait_vsync(mdev);
 mga_wait_busy(mdev);
 WREG8(MGAREG_SEQ_DATA, seq1);
 msleep(20);
 WREG8(MGAREG_CRTCEXT_INDEX, 0x01);
 crtcext1 |= RREG8(MGAREG_CRTCEXT_DATA) & ~0x30;
 WREG8(MGAREG_CRTCEXT_DATA, crtcext1);







}
