
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc4_plane_state {int dummy; } ;
struct drm_plane_state {int dummy; } ;



__attribute__((used)) static inline struct vc4_plane_state *
to_vc4_plane_state(struct drm_plane_state *state)
{
 return (struct vc4_plane_state *)state;
}
