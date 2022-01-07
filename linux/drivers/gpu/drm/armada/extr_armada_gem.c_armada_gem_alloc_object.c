
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* filp; } ;
struct armada_gem_object {TYPE_2__ obj; } ;
struct address_space {int dummy; } ;
struct TYPE_3__ {struct address_space* f_mapping; } ;


 int DRM_DEBUG_DRIVER (char*,struct armada_gem_object*,size_t) ;
 int GFP_HIGHUSER ;
 int GFP_KERNEL ;
 int __GFP_RECLAIMABLE ;
 scalar_t__ drm_gem_object_init (struct drm_device*,TYPE_2__*,size_t) ;
 int kfree (struct armada_gem_object*) ;
 struct armada_gem_object* kzalloc (int,int ) ;
 int mapping_set_gfp_mask (struct address_space*,int) ;
 size_t roundup_gem_size (size_t) ;

__attribute__((used)) static struct armada_gem_object *armada_gem_alloc_object(struct drm_device *dev,
 size_t size)
{
 struct armada_gem_object *obj;
 struct address_space *mapping;

 size = roundup_gem_size(size);

 obj = kzalloc(sizeof(*obj), GFP_KERNEL);
 if (!obj)
  return ((void*)0);

 if (drm_gem_object_init(dev, &obj->obj, size)) {
  kfree(obj);
  return ((void*)0);
 }

 mapping = obj->obj.filp->f_mapping;
 mapping_set_gfp_mask(mapping, GFP_HIGHUSER | __GFP_RECLAIMABLE);

 DRM_DEBUG_DRIVER("alloc obj %p size %zu\n", obj, size);

 return obj;
}
