
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc {int dummy; } ;


 int vmw_crtc_to_stdu (struct drm_crtc*) ;
 int vmw_stdu_destroy (int ) ;

__attribute__((used)) static void vmw_stdu_crtc_destroy(struct drm_crtc *crtc)
{
 vmw_stdu_destroy(vmw_crtc_to_stdu(crtc));
}
