
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xen_gem_object {int base; } ;
struct drm_device {int dummy; } ;


 int ENOMEM ;
 struct xen_gem_object* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int drm_gem_object_init (struct drm_device*,int *,size_t) ;
 int kfree (struct xen_gem_object*) ;
 struct xen_gem_object* kzalloc (int,int ) ;

__attribute__((used)) static struct xen_gem_object *gem_create_obj(struct drm_device *dev,
          size_t size)
{
 struct xen_gem_object *xen_obj;
 int ret;

 xen_obj = kzalloc(sizeof(*xen_obj), GFP_KERNEL);
 if (!xen_obj)
  return ERR_PTR(-ENOMEM);

 ret = drm_gem_object_init(dev, &xen_obj->base, size);
 if (ret < 0) {
  kfree(xen_obj);
  return ERR_PTR(ret);
 }

 return xen_obj;
}
