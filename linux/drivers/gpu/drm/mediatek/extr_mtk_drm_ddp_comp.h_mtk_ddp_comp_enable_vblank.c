
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtk_ddp_comp {TYPE_1__* funcs; } ;
struct drm_crtc {int dummy; } ;
struct TYPE_2__ {int (* enable_vblank ) (struct mtk_ddp_comp*,struct drm_crtc*) ;} ;


 int stub1 (struct mtk_ddp_comp*,struct drm_crtc*) ;

__attribute__((used)) static inline void mtk_ddp_comp_enable_vblank(struct mtk_ddp_comp *comp,
           struct drm_crtc *crtc)
{
 if (comp->funcs && comp->funcs->enable_vblank)
  comp->funcs->enable_vblank(comp, crtc);
}
