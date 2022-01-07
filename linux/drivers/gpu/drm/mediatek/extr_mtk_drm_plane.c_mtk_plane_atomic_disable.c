
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int enable; int dirty; } ;
struct mtk_plane_state {TYPE_1__ pending; } ;
struct drm_plane_state {int dummy; } ;
struct drm_plane {int state; } ;


 struct mtk_plane_state* to_mtk_plane_state (int ) ;
 int wmb () ;

__attribute__((used)) static void mtk_plane_atomic_disable(struct drm_plane *plane,
         struct drm_plane_state *old_state)
{
 struct mtk_plane_state *state = to_mtk_plane_state(plane->state);

 state->pending.enable = 0;
 wmb();
 state->pending.dirty = 1;
}
