
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc {scalar_t__ state; } ;
typedef enum dpu_crtc_client_type { ____Placeholder_dpu_crtc_client_type } dpu_crtc_client_type ;


 int NRT_CLIENT ;
 int RT_CLIENT ;

__attribute__((used)) static inline enum dpu_crtc_client_type dpu_crtc_get_client_type(
      struct drm_crtc *crtc)
{
 return crtc && crtc->state ? RT_CLIENT : NRT_CLIENT;
}
