
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct drm_gem_object {struct file* filp; } ;
struct drm_device {int dummy; } ;


 scalar_t__ IS_ERR (struct file*) ;
 int PTR_ERR (struct file*) ;
 int VM_NORESERVE ;
 int drm_gem_private_object_init (struct drm_device*,struct drm_gem_object*,size_t) ;
 struct file* shmem_file_setup (char*,size_t,int ) ;

int drm_gem_object_init(struct drm_device *dev,
   struct drm_gem_object *obj, size_t size)
{
 struct file *filp;

 drm_gem_private_object_init(dev, obj, size);

 filp = shmem_file_setup("drm mm object", size, VM_NORESERVE);
 if (IS_ERR(filp))
  return PTR_ERR(filp);

 obj->filp = filp;

 return 0;
}
