
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct drm_property {int dummy; } ;
struct drm_plane {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static int mdp4_plane_set_property(struct drm_plane *plane,
  struct drm_property *property, uint64_t val)
{

 return -EINVAL;
}
