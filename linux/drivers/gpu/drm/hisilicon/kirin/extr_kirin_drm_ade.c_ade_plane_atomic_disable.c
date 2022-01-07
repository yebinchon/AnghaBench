
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kirin_plane {int dummy; } ;
struct drm_plane_state {int dummy; } ;
struct drm_plane {int dummy; } ;


 int ade_disable_channel (struct kirin_plane*) ;
 struct kirin_plane* to_kirin_plane (struct drm_plane*) ;

__attribute__((used)) static void ade_plane_atomic_disable(struct drm_plane *plane,
         struct drm_plane_state *old_state)
{
 struct kirin_plane *kplane = to_kirin_plane(plane);

 ade_disable_channel(kplane);
}
