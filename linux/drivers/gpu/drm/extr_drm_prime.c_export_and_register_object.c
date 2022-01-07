
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct drm_gem_object {scalar_t__ handle_count; struct dma_buf* dma_buf; TYPE_2__* funcs; } ;
struct drm_device {TYPE_1__* driver; } ;
struct dma_buf {int dummy; } ;
struct TYPE_4__ {struct dma_buf* (* export ) (struct drm_gem_object*,int ) ;} ;
struct TYPE_3__ {struct dma_buf* (* gem_prime_export ) (struct drm_gem_object*,int ) ;} ;


 int ENOENT ;
 struct dma_buf* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct dma_buf*) ;
 struct dma_buf* drm_gem_prime_export (struct drm_gem_object*,int ) ;
 int get_dma_buf (struct dma_buf*) ;
 struct dma_buf* stub1 (struct drm_gem_object*,int ) ;
 struct dma_buf* stub2 (struct drm_gem_object*,int ) ;

__attribute__((used)) static struct dma_buf *export_and_register_object(struct drm_device *dev,
        struct drm_gem_object *obj,
        uint32_t flags)
{
 struct dma_buf *dmabuf;


 if (obj->handle_count == 0) {
  dmabuf = ERR_PTR(-ENOENT);
  return dmabuf;
 }

 if (obj->funcs && obj->funcs->export)
  dmabuf = obj->funcs->export(obj, flags);
 else if (dev->driver->gem_prime_export)
  dmabuf = dev->driver->gem_prime_export(obj, flags);
 else
  dmabuf = drm_gem_prime_export(obj, flags);
 if (IS_ERR(dmabuf)) {



  return dmabuf;
 }






 obj->dma_buf = dmabuf;
 get_dma_buf(obj->dma_buf);

 return dmabuf;
}
