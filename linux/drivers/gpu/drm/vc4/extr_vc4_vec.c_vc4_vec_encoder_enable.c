
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vc4_vec_encoder {struct vc4_vec* vec; } ;
struct vc4_vec {TYPE_2__* tv_mode; int clock; TYPE_1__* pdev; } ;
struct drm_encoder {int dummy; } ;
struct TYPE_4__ {int (* mode_set ) (struct vc4_vec*) ;} ;
struct TYPE_3__ {int dev; } ;


 int DRM_ERROR (char*,int) ;
 int VEC_CFG ;
 int VEC_CFG_VEC_EN ;
 int VEC_CLMP0_END ;
 int VEC_CLMP0_START ;
 int VEC_CONFIG2 ;
 int VEC_CONFIG2_RGB_DIG_DIS ;
 int VEC_CONFIG2_UV_DIG_DIS ;
 int VEC_CONFIG3 ;
 int VEC_CONFIG3_HORIZ_LEN_STD ;
 int VEC_DAC_CONFIG ;
 int VEC_DAC_CONFIG_DAC_CTRL (int) ;
 int VEC_DAC_CONFIG_DRIVER_CTRL (int) ;
 int VEC_DAC_CONFIG_LDO_BIAS_CTRL (int) ;
 int VEC_DAC_MISC ;
 int VEC_DAC_MISC_DAC_RST_N ;
 int VEC_DAC_MISC_VID_ACT ;
 int VEC_MASK0 ;
 int VEC_SCHPH ;
 int VEC_SOFT_RESET ;
 int VEC_WRITE (int ,int) ;
 int VEC_WSE_CONTROL ;
 int VEC_WSE_RESET ;
 int clk_prepare_enable (int ) ;
 int clk_set_rate (int ,int) ;
 int pm_runtime_get_sync (int *) ;
 int stub1 (struct vc4_vec*) ;
 struct vc4_vec_encoder* to_vc4_vec_encoder (struct drm_encoder*) ;

__attribute__((used)) static void vc4_vec_encoder_enable(struct drm_encoder *encoder)
{
 struct vc4_vec_encoder *vc4_vec_encoder = to_vc4_vec_encoder(encoder);
 struct vc4_vec *vec = vc4_vec_encoder->vec;
 int ret;

 ret = pm_runtime_get_sync(&vec->pdev->dev);
 if (ret < 0) {
  DRM_ERROR("Failed to retain power domain: %d\n", ret);
  return;
 }
 ret = clk_set_rate(vec->clock, 108000000);
 if (ret) {
  DRM_ERROR("Failed to set clock rate: %d\n", ret);
  return;
 }

 ret = clk_prepare_enable(vec->clock);
 if (ret) {
  DRM_ERROR("Failed to turn on core clock: %d\n", ret);
  return;
 }


 VEC_WRITE(VEC_WSE_RESET, 1);
 VEC_WRITE(VEC_SOFT_RESET, 1);


 VEC_WRITE(VEC_WSE_CONTROL, 0);







 VEC_WRITE(VEC_SCHPH, 0x28);




 VEC_WRITE(VEC_CLMP0_START, 0xac);
 VEC_WRITE(VEC_CLMP0_END, 0xec);
 VEC_WRITE(VEC_CONFIG2,
    VEC_CONFIG2_UV_DIG_DIS | VEC_CONFIG2_RGB_DIG_DIS);
 VEC_WRITE(VEC_CONFIG3, VEC_CONFIG3_HORIZ_LEN_STD);
 VEC_WRITE(VEC_DAC_CONFIG,
    VEC_DAC_CONFIG_DAC_CTRL(0xc) |
    VEC_DAC_CONFIG_DRIVER_CTRL(0xc) |
    VEC_DAC_CONFIG_LDO_BIAS_CTRL(0x46));


 VEC_WRITE(VEC_MASK0, 0);

 vec->tv_mode->mode_set(vec);

 VEC_WRITE(VEC_DAC_MISC,
    VEC_DAC_MISC_VID_ACT | VEC_DAC_MISC_DAC_RST_N);
 VEC_WRITE(VEC_CFG, VEC_CFG_VEC_EN);
}
