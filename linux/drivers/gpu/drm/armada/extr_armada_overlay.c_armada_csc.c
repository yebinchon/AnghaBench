
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_plane_state {scalar_t__ color_encoding; } ;


 int CFG_CSC_RGB_COMPUTER ;
 int CFG_CSC_YUV_CCIR601 ;
 int CFG_CSC_YUV_CCIR709 ;
 scalar_t__ DRM_COLOR_YCBCR_BT709 ;

__attribute__((used)) static inline u32 armada_csc(struct drm_plane_state *state)
{






 return CFG_CSC_RGB_COMPUTER |
        (state->color_encoding == DRM_COLOR_YCBCR_BT709 ?
   CFG_CSC_YUV_CCIR709 : CFG_CSC_YUV_CCIR601);
}
