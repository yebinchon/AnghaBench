
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct drm_vram_mm_funcs {int dummy; } ;
struct drm_vram_mm {int dummy; } ;
struct drm_device {struct drm_vram_mm* vram_mm; } ;


 int ENOMEM ;
 struct drm_vram_mm* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ WARN_ON (struct drm_vram_mm*) ;
 int drm_vram_mm_init (struct drm_vram_mm*,struct drm_device*,int ,size_t,struct drm_vram_mm_funcs const*) ;
 int kfree (struct drm_vram_mm*) ;
 struct drm_vram_mm* kzalloc (int,int ) ;

struct drm_vram_mm *drm_vram_helper_alloc_mm(
 struct drm_device *dev, uint64_t vram_base, size_t vram_size,
 const struct drm_vram_mm_funcs *funcs)
{
 int ret;

 if (WARN_ON(dev->vram_mm))
  return dev->vram_mm;

 dev->vram_mm = kzalloc(sizeof(*dev->vram_mm), GFP_KERNEL);
 if (!dev->vram_mm)
  return ERR_PTR(-ENOMEM);

 ret = drm_vram_mm_init(dev->vram_mm, dev, vram_base, vram_size, funcs);
 if (ret)
  goto err_kfree;

 return dev->vram_mm;

err_kfree:
 kfree(dev->vram_mm);
 dev->vram_mm = ((void*)0);
 return ERR_PTR(ret);
}
