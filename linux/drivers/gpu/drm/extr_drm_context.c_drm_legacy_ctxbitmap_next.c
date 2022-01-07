
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int struct_mutex; int ctx_idr; } ;


 int DRM_RESERVED_CONTEXTS ;
 int GFP_KERNEL ;
 int idr_alloc (int *,int *,int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int drm_legacy_ctxbitmap_next(struct drm_device * dev)
{
 int ret;

 mutex_lock(&dev->struct_mutex);
 ret = idr_alloc(&dev->ctx_idr, ((void*)0), DRM_RESERVED_CONTEXTS, 0,
   GFP_KERNEL);
 mutex_unlock(&dev->struct_mutex);
 return ret;
}
