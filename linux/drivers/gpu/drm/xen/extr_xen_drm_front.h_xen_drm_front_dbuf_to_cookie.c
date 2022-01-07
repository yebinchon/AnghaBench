
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef uintptr_t u64 ;
struct drm_gem_object {int dummy; } ;



__attribute__((used)) static inline u64 xen_drm_front_dbuf_to_cookie(struct drm_gem_object *gem_obj)
{
 return (uintptr_t)gem_obj;
}
