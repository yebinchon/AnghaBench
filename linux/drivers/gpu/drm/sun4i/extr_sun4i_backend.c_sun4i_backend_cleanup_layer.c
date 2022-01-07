
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int regs; } ;
struct sun4i_backend {TYPE_1__ engine; } ;


 int SUN4I_BACKEND_ATTCTL_REG0 (int) ;
 int SUN4I_BACKEND_ATTCTL_REG0_LAY_VDOEN ;
 int SUN4I_BACKEND_ATTCTL_REG0_LAY_YUVEN ;
 int regmap_update_bits (int ,int ,int,int ) ;

void sun4i_backend_cleanup_layer(struct sun4i_backend *backend,
     int layer)
{
 regmap_update_bits(backend->engine.regs,
      SUN4I_BACKEND_ATTCTL_REG0(layer),
      SUN4I_BACKEND_ATTCTL_REG0_LAY_VDOEN |
      SUN4I_BACKEND_ATTCTL_REG0_LAY_YUVEN, 0);
}
