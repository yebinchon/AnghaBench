
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunxi_engine {int regs; } ;


 int DRM_DEBUG_DRIVER (char*) ;
 int SUN4I_BACKEND_OCCTL_ENABLE ;
 int SUN4I_BACKEND_OCCTL_REG ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static void sun4i_backend_disable_color_correction(struct sunxi_engine *engine)
{
 DRM_DEBUG_DRIVER("Disabling color correction\n");


 regmap_update_bits(engine->regs, SUN4I_BACKEND_OCCTL_REG,
      SUN4I_BACKEND_OCCTL_ENABLE, 0);
}
