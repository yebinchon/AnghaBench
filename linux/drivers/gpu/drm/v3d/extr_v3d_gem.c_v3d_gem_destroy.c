
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v3d_dev {int pt_paddr; scalar_t__ pt; int dev; int mm; int render_job; int bin_job; } ;
struct drm_device {int dummy; } ;


 int WARN_ON (int ) ;
 int dma_free_coherent (int ,int,void*,int ) ;
 int drm_mm_takedown (int *) ;
 struct v3d_dev* to_v3d_dev (struct drm_device*) ;
 int v3d_sched_fini (struct v3d_dev*) ;

void
v3d_gem_destroy(struct drm_device *dev)
{
 struct v3d_dev *v3d = to_v3d_dev(dev);

 v3d_sched_fini(v3d);




 WARN_ON(v3d->bin_job);
 WARN_ON(v3d->render_job);

 drm_mm_takedown(&v3d->mm);

 dma_free_coherent(v3d->dev, 4096 * 1024, (void *)v3d->pt, v3d->pt_paddr);
}
