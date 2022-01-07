
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_bo {int gem; int base; } ;
struct drm_device {int dummy; } ;


 int ENOMEM ;
 struct tegra_bo* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int drm_gem_create_mmap_offset (int *) ;
 int drm_gem_object_init (struct drm_device*,int *,size_t) ;
 int drm_gem_object_release (int *) ;
 int host1x_bo_init (int *,int *) ;
 int kfree (struct tegra_bo*) ;
 struct tegra_bo* kzalloc (int,int ) ;
 size_t round_up (size_t,int ) ;
 int tegra_bo_ops ;

__attribute__((used)) static struct tegra_bo *tegra_bo_alloc_object(struct drm_device *drm,
           size_t size)
{
 struct tegra_bo *bo;
 int err;

 bo = kzalloc(sizeof(*bo), GFP_KERNEL);
 if (!bo)
  return ERR_PTR(-ENOMEM);

 host1x_bo_init(&bo->base, &tegra_bo_ops);
 size = round_up(size, PAGE_SIZE);

 err = drm_gem_object_init(drm, &bo->gem, size);
 if (err < 0)
  goto free;

 err = drm_gem_create_mmap_offset(&bo->gem);
 if (err < 0)
  goto release;

 return bo;

release:
 drm_gem_object_release(&bo->gem);
free:
 kfree(bo);
 return ERR_PTR(err);
}
