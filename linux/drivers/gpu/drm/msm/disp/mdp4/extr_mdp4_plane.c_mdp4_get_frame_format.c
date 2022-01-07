
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_framebuffer {scalar_t__ modifier; TYPE_1__* format; } ;
typedef enum mdp4_frame_format { ____Placeholder_mdp4_frame_format } mdp4_frame_format ;
struct TYPE_2__ {scalar_t__ format; } ;


 scalar_t__ DRM_FORMAT_MOD_SAMSUNG_64_32_TILE ;
 scalar_t__ DRM_FORMAT_NV12 ;
 int FRAME_LINEAR ;
 int FRAME_TILE_YCBCR_420 ;

__attribute__((used)) static inline
enum mdp4_frame_format mdp4_get_frame_format(struct drm_framebuffer *fb)
{
 bool is_tile = 0;

 if (fb->modifier == DRM_FORMAT_MOD_SAMSUNG_64_32_TILE)
  is_tile = 1;

 if (fb->format->format == DRM_FORMAT_NV12 && is_tile)
  return FRAME_TILE_YCBCR_420;

 return FRAME_LINEAR;
}
