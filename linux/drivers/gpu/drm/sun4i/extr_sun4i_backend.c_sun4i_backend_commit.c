
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunxi_engine {int regs; } ;


 int DRM_DEBUG_DRIVER (char*) ;
 int SUN4I_BACKEND_REGBUFFCTL_AUTOLOAD_DIS ;
 int SUN4I_BACKEND_REGBUFFCTL_LOADCTL ;
 int SUN4I_BACKEND_REGBUFFCTL_REG ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static void sun4i_backend_commit(struct sunxi_engine *engine)
{
 DRM_DEBUG_DRIVER("Committing changes\n");

 regmap_write(engine->regs, SUN4I_BACKEND_REGBUFFCTL_REG,
       SUN4I_BACKEND_REGBUFFCTL_AUTOLOAD_DIS |
       SUN4I_BACKEND_REGBUFFCTL_LOADCTL);
}
