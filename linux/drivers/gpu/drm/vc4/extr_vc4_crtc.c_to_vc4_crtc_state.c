
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc4_crtc_state {int dummy; } ;
struct drm_crtc_state {int dummy; } ;



__attribute__((used)) static inline struct vc4_crtc_state *
to_vc4_crtc_state(struct drm_crtc_state *crtc_state)
{
 return (struct vc4_crtc_state *)crtc_state;
}
