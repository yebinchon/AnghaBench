
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sunxi_engine {int regs; } ;
struct drm_crtc_state {int dummy; } ;


 int SUN4I_BACKEND_REGBUFFCTL_LOADCTL ;
 int SUN4I_BACKEND_REGBUFFCTL_REG ;
 int WARN_ON (int ) ;
 int regmap_read_poll_timeout (int ,int ,int,int,int,int) ;

__attribute__((used)) static void sun4i_backend_atomic_begin(struct sunxi_engine *engine,
           struct drm_crtc_state *old_state)
{
 u32 val;

 WARN_ON(regmap_read_poll_timeout(engine->regs,
      SUN4I_BACKEND_REGBUFFCTL_REG,
      val, !(val & SUN4I_BACKEND_REGBUFFCTL_LOADCTL),
      100, 50000));
}
