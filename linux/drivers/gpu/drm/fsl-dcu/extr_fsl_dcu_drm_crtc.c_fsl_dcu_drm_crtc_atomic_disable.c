
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_dcu_drm_device {int pix_clk; int regmap; } ;
struct drm_device {struct fsl_dcu_drm_device* dev_private; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {struct drm_device* dev; } ;


 int DCU_DCU_MODE ;
 int DCU_MODE_DCU_MODE (int ) ;
 int DCU_MODE_DCU_MODE_MASK ;
 int DCU_MODE_OFF ;
 int DCU_UPDATE_MODE ;
 int DCU_UPDATE_MODE_READREG ;
 int clk_disable_unprepare (int ) ;
 int drm_atomic_helper_disable_planes_on_crtc (struct drm_crtc_state*,int) ;
 int drm_crtc_vblank_off (struct drm_crtc*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static void fsl_dcu_drm_crtc_atomic_disable(struct drm_crtc *crtc,
     struct drm_crtc_state *old_crtc_state)
{
 struct drm_device *dev = crtc->dev;
 struct fsl_dcu_drm_device *fsl_dev = dev->dev_private;


 drm_atomic_helper_disable_planes_on_crtc(old_crtc_state, 1);

 drm_crtc_vblank_off(crtc);

 regmap_update_bits(fsl_dev->regmap, DCU_DCU_MODE,
      DCU_MODE_DCU_MODE_MASK,
      DCU_MODE_DCU_MODE(DCU_MODE_OFF));
 regmap_write(fsl_dev->regmap, DCU_UPDATE_MODE,
       DCU_UPDATE_MODE_READREG);
 clk_disable_unprepare(fsl_dev->pix_clk);
}
