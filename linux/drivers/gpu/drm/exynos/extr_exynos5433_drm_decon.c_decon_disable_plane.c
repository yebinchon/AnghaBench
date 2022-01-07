
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_drm_plane {unsigned int index; } ;
struct exynos_drm_crtc {struct decon_context* ctx; } ;
struct decon_context {int dummy; } ;


 int DECON_WINCONx (unsigned int) ;
 int WINCONx_ENWIN_F ;
 int decon_set_bits (struct decon_context*,int ,int ,int ) ;

__attribute__((used)) static void decon_disable_plane(struct exynos_drm_crtc *crtc,
    struct exynos_drm_plane *plane)
{
 struct decon_context *ctx = crtc->ctx;
 unsigned int win = plane->index;

 decon_set_bits(ctx, DECON_WINCONx(win), WINCONx_ENWIN_F, 0);
}
