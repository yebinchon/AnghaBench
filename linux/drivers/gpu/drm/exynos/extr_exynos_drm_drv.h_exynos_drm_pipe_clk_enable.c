
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct exynos_drm_crtc {TYPE_1__* pipe_clk; } ;
struct TYPE_2__ {int (* enable ) (TYPE_1__*,int) ;} ;


 int stub1 (TYPE_1__*,int) ;

__attribute__((used)) static inline void exynos_drm_pipe_clk_enable(struct exynos_drm_crtc *crtc,
           bool enable)
{
 if (crtc->pipe_clk)
  crtc->pipe_clk->enable(crtc->pipe_clk, enable);
}
