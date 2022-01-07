
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtk_ddp_comp {TYPE_1__* funcs; } ;
struct drm_crtc_state {int dummy; } ;
struct TYPE_2__ {int (* gamma_set ) (struct mtk_ddp_comp*,struct drm_crtc_state*) ;} ;


 int stub1 (struct mtk_ddp_comp*,struct drm_crtc_state*) ;

__attribute__((used)) static inline void mtk_ddp_gamma_set(struct mtk_ddp_comp *comp,
         struct drm_crtc_state *state)
{
 if (comp->funcs && comp->funcs->gamma_set)
  comp->funcs->gamma_set(comp, state);
}
