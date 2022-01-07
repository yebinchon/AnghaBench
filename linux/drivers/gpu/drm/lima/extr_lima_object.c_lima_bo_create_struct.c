
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lima_device {int ddev; } ;
struct lima_bo {int gem; int va; int lock; } ;


 int ENOMEM ;
 struct lima_bo* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int PAGE_ALIGN (int ) ;
 int drm_gem_object_init (int ,int *,int ) ;
 int kfree (struct lima_bo*) ;
 struct lima_bo* kzalloc (int,int ) ;
 int mutex_init (int *) ;

__attribute__((used)) static struct lima_bo *lima_bo_create_struct(struct lima_device *dev, u32 size, u32 flags)
{
 struct lima_bo *bo;
 int err;

 size = PAGE_ALIGN(size);

 bo = kzalloc(sizeof(*bo), GFP_KERNEL);
 if (!bo)
  return ERR_PTR(-ENOMEM);

 mutex_init(&bo->lock);
 INIT_LIST_HEAD(&bo->va);

 err = drm_gem_object_init(dev->ddev, &bo->gem, size);
 if (err) {
  kfree(bo);
  return ERR_PTR(err);
 }

 return bo;
}
