
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc_state {int dummy; } ;
struct rockchip_crtc_state {struct drm_crtc_state base; } ;
struct drm_crtc {int dummy; } ;


 int GFP_KERNEL ;
 int __drm_atomic_helper_crtc_duplicate_state (struct drm_crtc*,struct drm_crtc_state*) ;
 struct rockchip_crtc_state* kzalloc (int,int ) ;

__attribute__((used)) static struct drm_crtc_state *vop_crtc_duplicate_state(struct drm_crtc *crtc)
{
 struct rockchip_crtc_state *rockchip_state;

 rockchip_state = kzalloc(sizeof(*rockchip_state), GFP_KERNEL);
 if (!rockchip_state)
  return ((void*)0);

 __drm_atomic_helper_crtc_duplicate_state(crtc, &rockchip_state->base);
 return &rockchip_state->base;
}
