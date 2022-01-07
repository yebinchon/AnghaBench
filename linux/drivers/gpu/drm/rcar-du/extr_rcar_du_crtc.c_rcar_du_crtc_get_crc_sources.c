
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_du_crtc {size_t sources_count; char const* const* sources; } ;
struct drm_crtc {int dummy; } ;


 struct rcar_du_crtc* to_rcar_crtc (struct drm_crtc*) ;

__attribute__((used)) static const char *const *
rcar_du_crtc_get_crc_sources(struct drm_crtc *crtc, size_t *count)
{
 struct rcar_du_crtc *rcrtc = to_rcar_crtc(crtc);

 *count = rcrtc->sources_count;
 return rcrtc->sources;
}
