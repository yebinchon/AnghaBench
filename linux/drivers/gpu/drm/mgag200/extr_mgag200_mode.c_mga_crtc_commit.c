
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mga_device {scalar_t__ type; } ;
struct drm_device {struct mga_device* dev_private; } ;
struct drm_crtc_helper_funcs {int (* dpms ) (struct drm_crtc*,int ) ;} ;
struct drm_crtc {struct drm_crtc_helper_funcs* helper_private; struct drm_device* dev; } ;


 int DRM_MODE_DPMS_ON ;
 scalar_t__ G200_EW3 ;
 scalar_t__ G200_SE_A ;
 scalar_t__ G200_SE_B ;
 scalar_t__ G200_WB ;
 int MGAREG_SEQ_DATA ;
 int MGAREG_SEQ_INDEX ;
 int RREG8 (int ) ;
 int WREG8 (int ,int) ;
 int WREG_SEQ (int,int) ;
 int mga_g200wb_commit (struct drm_crtc*) ;
 int msleep (int) ;
 int stub1 (struct drm_crtc*,int ) ;

__attribute__((used)) static void mga_crtc_commit(struct drm_crtc *crtc)
{
 struct drm_device *dev = crtc->dev;
 struct mga_device *mdev = dev->dev_private;
 const struct drm_crtc_helper_funcs *crtc_funcs = crtc->helper_private;
 u8 tmp;

 if (mdev->type == G200_WB || mdev->type == G200_EW3)
  mga_g200wb_commit(crtc);

 if (mdev->type == G200_SE_A || mdev->type == G200_SE_B) {
  msleep(50);
  WREG_SEQ(1, 0x0);
  msleep(20);
  WREG_SEQ(0, 0x3);
 } else {
  WREG8(MGAREG_SEQ_INDEX, 0x1);
  tmp = RREG8(MGAREG_SEQ_DATA);

  tmp &= ~0x20;
  WREG_SEQ(0x1, tmp);
  WREG_SEQ(0, 3);
 }
 crtc_funcs->dpms(crtc, DRM_MODE_DPMS_ON);
}
