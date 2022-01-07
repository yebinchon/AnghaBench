
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct etnaviv_gem_ops {int dummy; } ;
struct drm_gem_object {int dummy; } ;
struct etnaviv_gem_object {int flags; struct drm_gem_object base; int vram_list; int lock; struct etnaviv_gem_ops const* ops; } ;
struct drm_device {int dev; } ;


 int EINVAL ;
 int ENOMEM ;

 int ETNA_BO_CACHE_MASK ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int dev_err (int ,char*,int) ;
 struct etnaviv_gem_object* kzalloc (unsigned int,int ) ;
 int mutex_init (int *) ;

__attribute__((used)) static int etnaviv_gem_new_impl(struct drm_device *dev, u32 size, u32 flags,
 const struct etnaviv_gem_ops *ops, struct drm_gem_object **obj)
{
 struct etnaviv_gem_object *etnaviv_obj;
 unsigned sz = sizeof(*etnaviv_obj);
 bool valid = 1;


 switch (flags & ETNA_BO_CACHE_MASK) {
 case 129:
 case 130:
 case 128:
  break;
 default:
  valid = 0;
 }

 if (!valid) {
  dev_err(dev->dev, "invalid cache flag: %x\n",
   (flags & ETNA_BO_CACHE_MASK));
  return -EINVAL;
 }

 etnaviv_obj = kzalloc(sz, GFP_KERNEL);
 if (!etnaviv_obj)
  return -ENOMEM;

 etnaviv_obj->flags = flags;
 etnaviv_obj->ops = ops;

 mutex_init(&etnaviv_obj->lock);
 INIT_LIST_HEAD(&etnaviv_obj->vram_list);

 *obj = &etnaviv_obj->base;

 return 0;
}
