
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_du_crtc {int dummy; } ;
struct drm_crtc {int dummy; } ;
typedef enum vsp1_du_crc_source { ____Placeholder_vsp1_du_crc_source } vsp1_du_crc_source ;


 int DRM_DEBUG_DRIVER (char*,char const*) ;
 int EINVAL ;
 scalar_t__ rcar_du_crtc_parse_crc_source (struct rcar_du_crtc*,char const*,int*) ;
 struct rcar_du_crtc* to_rcar_crtc (struct drm_crtc*) ;

__attribute__((used)) static int rcar_du_crtc_verify_crc_source(struct drm_crtc *crtc,
       const char *source_name,
       size_t *values_cnt)
{
 struct rcar_du_crtc *rcrtc = to_rcar_crtc(crtc);
 enum vsp1_du_crc_source source;

 if (rcar_du_crtc_parse_crc_source(rcrtc, source_name, &source) < 0) {
  DRM_DEBUG_DRIVER("unknown source %s\n", source_name);
  return -EINVAL;
 }

 *values_cnt = 1;
 return 0;
}
