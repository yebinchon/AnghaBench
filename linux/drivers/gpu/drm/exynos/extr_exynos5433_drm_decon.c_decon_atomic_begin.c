
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_drm_crtc {struct decon_context* ctx; } ;
struct decon_context {int dummy; } ;


 int decon_shadow_protect (struct decon_context*,int) ;

__attribute__((used)) static void decon_atomic_begin(struct exynos_drm_crtc *crtc)
{
 struct decon_context *ctx = crtc->ctx;

 decon_shadow_protect(ctx, 1);
}
