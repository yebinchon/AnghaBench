
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_vgem_gem_object {int pages_lock; int base; } ;
struct drm_device {int dummy; } ;


 int ENOMEM ;
 struct drm_vgem_gem_object* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int drm_gem_object_init (struct drm_device*,int *,int ) ;
 int kfree (struct drm_vgem_gem_object*) ;
 struct drm_vgem_gem_object* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int roundup (unsigned long,int ) ;

__attribute__((used)) static struct drm_vgem_gem_object *__vgem_gem_create(struct drm_device *dev,
      unsigned long size)
{
 struct drm_vgem_gem_object *obj;
 int ret;

 obj = kzalloc(sizeof(*obj), GFP_KERNEL);
 if (!obj)
  return ERR_PTR(-ENOMEM);

 ret = drm_gem_object_init(dev, &obj->base, roundup(size, PAGE_SIZE));
 if (ret) {
  kfree(obj);
  return ERR_PTR(ret);
 }

 mutex_init(&obj->pages_lock);

 return obj;
}
