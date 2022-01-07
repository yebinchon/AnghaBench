
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct etnaviv_gem_ops {int dummy; } ;
struct etnaviv_gem_object {int dummy; } ;
struct drm_gem_object {int dummy; } ;
struct drm_device {int dummy; } ;


 int drm_gem_private_object_init (struct drm_device*,struct drm_gem_object*,size_t) ;
 int etnaviv_gem_new_impl (struct drm_device*,size_t,int ,struct etnaviv_gem_ops const*,struct drm_gem_object**) ;
 struct etnaviv_gem_object* to_etnaviv_bo (struct drm_gem_object*) ;

int etnaviv_gem_new_private(struct drm_device *dev, size_t size, u32 flags,
 const struct etnaviv_gem_ops *ops, struct etnaviv_gem_object **res)
{
 struct drm_gem_object *obj;
 int ret;

 ret = etnaviv_gem_new_impl(dev, size, flags, ops, &obj);
 if (ret)
  return ret;

 drm_gem_private_object_init(dev, obj, size);

 *res = to_etnaviv_bo(obj);

 return 0;
}
