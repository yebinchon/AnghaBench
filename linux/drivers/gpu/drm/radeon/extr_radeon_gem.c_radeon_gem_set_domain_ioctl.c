
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int exclusive_lock; } ;
struct radeon_bo {int rdev; } ;
struct drm_radeon_gem_set_domain {int write_domain; int read_domains; int handle; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {struct radeon_device* dev_private; } ;


 int ENOENT ;
 int down_read (int *) ;
 struct drm_gem_object* drm_gem_object_lookup (struct drm_file*,int ) ;
 int drm_gem_object_put_unlocked (struct drm_gem_object*) ;
 struct radeon_bo* gem_to_radeon_bo (struct drm_gem_object*) ;
 int radeon_gem_handle_lockup (int ,int) ;
 int radeon_gem_set_domain (struct drm_gem_object*,int ,int ) ;
 int up_read (int *) ;

int radeon_gem_set_domain_ioctl(struct drm_device *dev, void *data,
    struct drm_file *filp)
{


 struct radeon_device *rdev = dev->dev_private;
 struct drm_radeon_gem_set_domain *args = data;
 struct drm_gem_object *gobj;
 struct radeon_bo *robj;
 int r;



 down_read(&rdev->exclusive_lock);


 gobj = drm_gem_object_lookup(filp, args->handle);
 if (gobj == ((void*)0)) {
  up_read(&rdev->exclusive_lock);
  return -ENOENT;
 }
 robj = gem_to_radeon_bo(gobj);

 r = radeon_gem_set_domain(gobj, args->read_domains, args->write_domain);

 drm_gem_object_put_unlocked(gobj);
 up_read(&rdev->exclusive_lock);
 r = radeon_gem_handle_lockup(robj->rdev, r);
 return r;
}
