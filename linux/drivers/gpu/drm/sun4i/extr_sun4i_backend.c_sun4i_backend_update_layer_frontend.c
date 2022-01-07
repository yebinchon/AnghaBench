
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u32 ;
struct TYPE_2__ {int regs; } ;
struct sun4i_backend {TYPE_1__ engine; } ;


 int DRM_DEBUG_DRIVER (char*) ;
 int SUN4I_BACKEND_ATTCTL_REG0 (int) ;
 int SUN4I_BACKEND_ATTCTL_REG0_LAY_VDOEN ;
 int SUN4I_BACKEND_ATTCTL_REG1 (int) ;
 int SUN4I_BACKEND_ATTCTL_REG1_LAY_FBFMT ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int sun4i_backend_drm_format_to_layer (int ,int *) ;

int sun4i_backend_update_layer_frontend(struct sun4i_backend *backend,
     int layer, uint32_t fmt)
{
 u32 val;
 int ret;

 ret = sun4i_backend_drm_format_to_layer(fmt, &val);
 if (ret) {
  DRM_DEBUG_DRIVER("Invalid format\n");
  return ret;
 }

 regmap_update_bits(backend->engine.regs,
      SUN4I_BACKEND_ATTCTL_REG0(layer),
      SUN4I_BACKEND_ATTCTL_REG0_LAY_VDOEN,
      SUN4I_BACKEND_ATTCTL_REG0_LAY_VDOEN);

 regmap_update_bits(backend->engine.regs,
      SUN4I_BACKEND_ATTCTL_REG1(layer),
      SUN4I_BACKEND_ATTCTL_REG1_LAY_FBFMT, val);

 return 0;
}
