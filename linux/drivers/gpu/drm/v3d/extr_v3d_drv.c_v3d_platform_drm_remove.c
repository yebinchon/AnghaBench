
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v3d_dev {int mmu_scratch_paddr; int mmu_scratch; int dev; } ;
struct platform_device {int dummy; } ;
struct drm_device {int dummy; } ;


 int dma_free_wc (int ,int,int ,int ) ;
 int drm_dev_put (struct drm_device*) ;
 int drm_dev_unregister (struct drm_device*) ;
 struct drm_device* platform_get_drvdata (struct platform_device*) ;
 struct v3d_dev* to_v3d_dev (struct drm_device*) ;
 int v3d_gem_destroy (struct drm_device*) ;

__attribute__((used)) static int v3d_platform_drm_remove(struct platform_device *pdev)
{
 struct drm_device *drm = platform_get_drvdata(pdev);
 struct v3d_dev *v3d = to_v3d_dev(drm);

 drm_dev_unregister(drm);

 v3d_gem_destroy(drm);

 drm_dev_put(drm);

 dma_free_wc(v3d->dev, 4096, v3d->mmu_scratch, v3d->mmu_scratch_paddr);

 return 0;
}
