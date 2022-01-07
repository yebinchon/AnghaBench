
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct drm_syncobj {int lock; int cb_list; int refcount; } ;
struct dma_fence {int dummy; } ;


 int DRM_SYNCOBJ_CREATE_SIGNALED ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int drm_syncobj_assign_null_handle (struct drm_syncobj*) ;
 int drm_syncobj_replace_fence (struct drm_syncobj*,struct dma_fence*) ;
 int kref_init (int *) ;
 struct drm_syncobj* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;

int drm_syncobj_create(struct drm_syncobj **out_syncobj, uint32_t flags,
         struct dma_fence *fence)
{
 struct drm_syncobj *syncobj;

 syncobj = kzalloc(sizeof(struct drm_syncobj), GFP_KERNEL);
 if (!syncobj)
  return -ENOMEM;

 kref_init(&syncobj->refcount);
 INIT_LIST_HEAD(&syncobj->cb_list);
 spin_lock_init(&syncobj->lock);

 if (flags & DRM_SYNCOBJ_CREATE_SIGNALED)
  drm_syncobj_assign_null_handle(syncobj);

 if (fence)
  drm_syncobj_replace_fence(syncobj, fence);

 *out_syncobj = syncobj;
 return 0;
}
