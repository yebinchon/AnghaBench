
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc4_plane {int dummy; } ;
struct drm_plane {int dummy; } ;



__attribute__((used)) static inline struct vc4_plane *
to_vc4_plane(struct drm_plane *plane)
{
 return (struct vc4_plane *)plane;
}
