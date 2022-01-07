
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v3d_job {void (* free ) (struct kref*) ;int deps; int refcount; struct v3d_dev* v3d; } ;
struct v3d_dev {int dev; } ;
struct drm_file {int dummy; } ;
struct dma_fence {int dummy; } ;


 int EINVAL ;
 int XA_FLAGS_ALLOC ;
 int drm_gem_fence_array_add (int *,struct dma_fence*) ;
 int drm_syncobj_find_fence (struct drm_file*,int ,int ,int ,struct dma_fence**) ;
 int kref_init (int *) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int xa_destroy (int *) ;
 int xa_init_flags (int *,int ) ;

__attribute__((used)) static int
v3d_job_init(struct v3d_dev *v3d, struct drm_file *file_priv,
      struct v3d_job *job, void (*free)(struct kref *ref),
      u32 in_sync)
{
 struct dma_fence *in_fence = ((void*)0);
 int ret;

 job->v3d = v3d;
 job->free = free;

 ret = pm_runtime_get_sync(v3d->dev);
 if (ret < 0)
  return ret;

 xa_init_flags(&job->deps, XA_FLAGS_ALLOC);

 ret = drm_syncobj_find_fence(file_priv, in_sync, 0, 0, &in_fence);
 if (ret == -EINVAL)
  goto fail;

 ret = drm_gem_fence_array_add(&job->deps, in_fence);
 if (ret)
  goto fail;

 kref_init(&job->refcount);

 return 0;
fail:
 xa_destroy(&job->deps);
 pm_runtime_put_autosuspend(v3d->dev);
 return ret;
}
