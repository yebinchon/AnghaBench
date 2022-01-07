
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct malidp_plane {TYPE_1__* layer; int hwdev; } ;
struct drm_plane_state {int dummy; } ;
struct drm_plane {int dummy; } ;
struct TYPE_2__ {scalar_t__ base; } ;


 int LAYER_ENABLE ;
 int LAYER_FLOWCFG (int ) ;
 int LAYER_FLOWCFG_MASK ;
 scalar_t__ MALIDP_LAYER_CONTROL ;
 int malidp_hw_clearbits (int ,int,scalar_t__) ;
 struct malidp_plane* to_malidp_plane (struct drm_plane*) ;

__attribute__((used)) static void malidp_de_plane_disable(struct drm_plane *plane,
        struct drm_plane_state *state)
{
 struct malidp_plane *mp = to_malidp_plane(plane);

 malidp_hw_clearbits(mp->hwdev,
       LAYER_ENABLE | LAYER_FLOWCFG(LAYER_FLOWCFG_MASK),
       mp->layer->base + MALIDP_LAYER_CONTROL);
}
