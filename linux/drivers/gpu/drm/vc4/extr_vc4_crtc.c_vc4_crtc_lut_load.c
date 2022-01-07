
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct vc4_dev {int dummy; } ;
struct vc4_crtc {int channel; int* lut_r; int* lut_g; int* lut_b; } ;
struct drm_device {int dummy; } ;
struct drm_crtc {int gamma_size; struct drm_device* dev; } ;


 int HVS_WRITE (int ,int) ;
 int SCALER_GAMADDR ;
 int SCALER_GAMADDR_AUTOINC ;
 int SCALER_GAMDATA ;
 struct vc4_crtc* to_vc4_crtc (struct drm_crtc*) ;
 struct vc4_dev* to_vc4_dev (struct drm_device*) ;

__attribute__((used)) static void
vc4_crtc_lut_load(struct drm_crtc *crtc)
{
 struct drm_device *dev = crtc->dev;
 struct vc4_dev *vc4 = to_vc4_dev(dev);
 struct vc4_crtc *vc4_crtc = to_vc4_crtc(crtc);
 u32 i;





 HVS_WRITE(SCALER_GAMADDR,
    SCALER_GAMADDR_AUTOINC |
    (vc4_crtc->channel * 3 * crtc->gamma_size));

 for (i = 0; i < crtc->gamma_size; i++)
  HVS_WRITE(SCALER_GAMDATA, vc4_crtc->lut_r[i]);
 for (i = 0; i < crtc->gamma_size; i++)
  HVS_WRITE(SCALER_GAMDATA, vc4_crtc->lut_g[i]);
 for (i = 0; i < crtc->gamma_size; i++)
  HVS_WRITE(SCALER_GAMDATA, vc4_crtc->lut_b[i]);
}
