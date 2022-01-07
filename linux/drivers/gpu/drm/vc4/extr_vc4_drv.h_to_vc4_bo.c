
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc4_bo {int dummy; } ;
struct drm_gem_object {int dummy; } ;



__attribute__((used)) static inline struct vc4_bo *
to_vc4_bo(struct drm_gem_object *bo)
{
 return (struct vc4_bo *)bo;
}
