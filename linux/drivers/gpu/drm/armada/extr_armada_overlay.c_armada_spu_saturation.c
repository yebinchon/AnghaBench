
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct drm_plane_state {int dummy; } ;
struct TYPE_2__ {int saturation; } ;


 TYPE_1__* drm_to_overlay_state (struct drm_plane_state*) ;

__attribute__((used)) static inline u32 armada_spu_saturation(struct drm_plane_state *state)
{

 return drm_to_overlay_state(state)->saturation << 16;
}
