
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv50_head {int olut; } ;
struct drm_crtc {int dummy; } ;


 int drm_crtc_cleanup (struct drm_crtc*) ;
 int kfree (struct nv50_head*) ;
 struct nv50_head* nv50_head (struct drm_crtc*) ;
 int nv50_lut_fini (int *) ;

__attribute__((used)) static void
nv50_head_destroy(struct drm_crtc *crtc)
{
 struct nv50_head *head = nv50_head(crtc);
 nv50_lut_fini(&head->olut);
 drm_crtc_cleanup(crtc);
 kfree(head);
}
