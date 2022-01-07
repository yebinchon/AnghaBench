
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc_state {int dummy; } ;
struct komeda_crtc_state {struct drm_crtc_state base; int max_slave_zorder; int clock_ratio; int active_pipes; int affected_pipes; } ;
struct drm_crtc {int state; } ;


 int GFP_KERNEL ;
 int __drm_atomic_helper_crtc_duplicate_state (struct drm_crtc*,struct drm_crtc_state*) ;
 struct komeda_crtc_state* kzalloc (int,int ) ;
 struct komeda_crtc_state* to_kcrtc_st (int ) ;

__attribute__((used)) static struct drm_crtc_state *
komeda_crtc_atomic_duplicate_state(struct drm_crtc *crtc)
{
 struct komeda_crtc_state *old = to_kcrtc_st(crtc->state);
 struct komeda_crtc_state *new;

 new = kzalloc(sizeof(*new), GFP_KERNEL);
 if (!new)
  return ((void*)0);

 __drm_atomic_helper_crtc_duplicate_state(crtc, &new->base);

 new->affected_pipes = old->active_pipes;
 new->clock_ratio = old->clock_ratio;
 new->max_slave_zorder = old->max_slave_zorder;

 return &new->base;
}
