
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int u32 ;
struct udl_gem_object {int base; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int ENOMEM ;
 int PAGE_SIZE ;
 int drm_gem_handle_create (struct drm_file*,int *,int *) ;
 int drm_gem_object_put_unlocked (int *) ;
 int drm_gem_object_release (int *) ;
 int kfree (struct udl_gem_object*) ;
 int roundup (int ,int ) ;
 struct udl_gem_object* udl_gem_alloc_object (struct drm_device*,int ) ;

__attribute__((used)) static int
udl_gem_create(struct drm_file *file,
        struct drm_device *dev,
        uint64_t size,
        uint32_t *handle_p)
{
 struct udl_gem_object *obj;
 int ret;
 u32 handle;

 size = roundup(size, PAGE_SIZE);

 obj = udl_gem_alloc_object(dev, size);
 if (obj == ((void*)0))
  return -ENOMEM;

 ret = drm_gem_handle_create(file, &obj->base, &handle);
 if (ret) {
  drm_gem_object_release(&obj->base);
  kfree(obj);
  return ret;
 }

 drm_gem_object_put_unlocked(&obj->base);
 *handle_p = handle;
 return 0;
}
