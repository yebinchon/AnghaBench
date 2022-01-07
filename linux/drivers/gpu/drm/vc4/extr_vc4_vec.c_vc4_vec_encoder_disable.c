
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vc4_vec_encoder {struct vc4_vec* vec; } ;
struct vc4_vec {TYPE_1__* pdev; int clock; } ;
struct drm_encoder {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int DRM_ERROR (char*,int) ;
 int VEC_CFG ;
 int VEC_DAC_MISC ;
 int VEC_DAC_MISC_BIAS_PWRDN ;
 int VEC_DAC_MISC_DAC_PWRDN ;
 int VEC_DAC_MISC_LDO_PWRDN ;
 int VEC_DAC_MISC_VCD_PWRDN ;
 int VEC_WRITE (int ,int) ;
 int clk_disable_unprepare (int ) ;
 int pm_runtime_put (int *) ;
 struct vc4_vec_encoder* to_vc4_vec_encoder (struct drm_encoder*) ;

__attribute__((used)) static void vc4_vec_encoder_disable(struct drm_encoder *encoder)
{
 struct vc4_vec_encoder *vc4_vec_encoder = to_vc4_vec_encoder(encoder);
 struct vc4_vec *vec = vc4_vec_encoder->vec;
 int ret;

 VEC_WRITE(VEC_CFG, 0);
 VEC_WRITE(VEC_DAC_MISC,
    VEC_DAC_MISC_VCD_PWRDN |
    VEC_DAC_MISC_BIAS_PWRDN |
    VEC_DAC_MISC_DAC_PWRDN |
    VEC_DAC_MISC_LDO_PWRDN);

 clk_disable_unprepare(vec->clock);

 ret = pm_runtime_put(&vec->pdev->dev);
 if (ret < 0) {
  DRM_ERROR("Failed to release power domain: %d\n", ret);
  return;
 }
}
