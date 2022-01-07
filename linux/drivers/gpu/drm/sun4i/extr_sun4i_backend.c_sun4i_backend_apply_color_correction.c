
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunxi_engine {int regs; } ;


 int DRM_DEBUG_DRIVER (char*) ;
 int SUN4I_BACKEND_OCCTL_ENABLE ;
 int SUN4I_BACKEND_OCCTL_REG ;
 int SUN4I_BACKEND_OCRCOEF_REG (int) ;
 int regmap_write (int ,int ,int ) ;
 int * sunxi_rgb2yuv_coef ;

__attribute__((used)) static void sun4i_backend_apply_color_correction(struct sunxi_engine *engine)
{
 int i;

 DRM_DEBUG_DRIVER("Applying RGB to YUV color correction\n");


 regmap_write(engine->regs, SUN4I_BACKEND_OCCTL_REG,
       SUN4I_BACKEND_OCCTL_ENABLE);

 for (i = 0; i < 12; i++)
  regmap_write(engine->regs, SUN4I_BACKEND_OCRCOEF_REG(i),
        sunxi_rgb2yuv_coef[i]);
}
