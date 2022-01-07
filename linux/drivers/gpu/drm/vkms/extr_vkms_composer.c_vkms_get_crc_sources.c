
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc {int dummy; } ;


 size_t ARRAY_SIZE (char const* const*) ;
 char const* const* pipe_crc_sources ;

const char *const *vkms_get_crc_sources(struct drm_crtc *crtc,
     size_t *count)
{
 *count = ARRAY_SIZE(pipe_crc_sources);
 return pipe_crc_sources;
}
