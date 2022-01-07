
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct vkms_gem_object {int pages_lock; int gem; } ;
struct drm_device {int dummy; } ;


 int ENOMEM ;
 struct vkms_gem_object* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int drm_gem_object_init (struct drm_device*,int *,int ) ;
 int kfree (struct vkms_gem_object*) ;
 struct vkms_gem_object* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int roundup (int ,int ) ;

__attribute__((used)) static struct vkms_gem_object *__vkms_gem_create(struct drm_device *dev,
       u64 size)
{
 struct vkms_gem_object *obj;
 int ret;

 obj = kzalloc(sizeof(*obj), GFP_KERNEL);
 if (!obj)
  return ERR_PTR(-ENOMEM);

 size = roundup(size, PAGE_SIZE);
 ret = drm_gem_object_init(dev, &obj->gem, size);
 if (ret) {
  kfree(obj);
  return ERR_PTR(ret);
 }

 mutex_init(&obj->pages_lock);

 return obj;
}
