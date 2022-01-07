
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc4_crtc {int dummy; } ;
struct drm_crtc {int dummy; } ;



__attribute__((used)) static inline struct vc4_crtc *
to_vc4_crtc(struct drm_crtc *crtc)
{
 return (struct vc4_crtc *)crtc;
}
