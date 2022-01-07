
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v3d_bo {int dummy; } ;
struct drm_gem_object {int dummy; } ;



__attribute__((used)) static inline struct v3d_bo *
to_v3d_bo(struct drm_gem_object *bo)
{
 return (struct v3d_bo *)bo;
}
