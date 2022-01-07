
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_dcu_drm_device {int regmap; int pix_clk; } ;
struct drm_device {struct fsl_dcu_drm_device* dev_private; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {struct drm_device* dev; } ;


 int DCU_DCU_MODE ;
 int DCU_MODE_DCU_MODE (int ) ;
 int DCU_MODE_DCU_MODE_MASK ;
 int DCU_MODE_NORMAL ;
 int DCU_UPDATE_MODE ;
 int DCU_UPDATE_MODE_READREG ;
 int clk_prepare_enable (int ) ;
 int drm_crtc_vblank_on (struct drm_crtc*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static void fsl_dcu_drm_crtc_atomic_enable(struct drm_crtc *crtc,
        struct drm_crtc_state *old_state)
{
 struct drm_device *dev = crtc->dev;
 struct fsl_dcu_drm_device *fsl_dev = dev->dev_private;

 clk_prepare_enable(fsl_dev->pix_clk);
 regmap_update_bits(fsl_dev->regmap, DCU_DCU_MODE,
      DCU_MODE_DCU_MODE_MASK,
      DCU_MODE_DCU_MODE(DCU_MODE_NORMAL));
 regmap_write(fsl_dev->regmap, DCU_UPDATE_MODE,
       DCU_UPDATE_MODE_READREG);

 drm_crtc_vblank_on(crtc);
}
