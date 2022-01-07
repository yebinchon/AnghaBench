
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct drm_gem_object {TYPE_1__* dev; } ;
struct dma_buf {int * ops; TYPE_3__* file; } ;
struct TYPE_6__ {int ttm; } ;
struct amdgpu_bo {int flags; TYPE_2__ tbo; } ;
struct TYPE_8__ {int i_mapping; } ;
struct TYPE_7__ {int f_mapping; } ;
struct TYPE_5__ {TYPE_4__* anon_inode; } ;


 int AMDGPU_GEM_CREATE_VM_ALWAYS_VALID ;
 int EPERM ;
 struct dma_buf* ERR_PTR (int ) ;
 int IS_ERR (struct dma_buf*) ;
 int amdgpu_dmabuf_ops ;
 scalar_t__ amdgpu_ttm_tt_get_usermm (int ) ;
 struct dma_buf* drm_gem_prime_export (struct drm_gem_object*,int) ;
 struct amdgpu_bo* gem_to_amdgpu_bo (struct drm_gem_object*) ;

struct dma_buf *amdgpu_gem_prime_export(struct drm_gem_object *gobj,
     int flags)
{
 struct amdgpu_bo *bo = gem_to_amdgpu_bo(gobj);
 struct dma_buf *buf;

 if (amdgpu_ttm_tt_get_usermm(bo->tbo.ttm) ||
     bo->flags & AMDGPU_GEM_CREATE_VM_ALWAYS_VALID)
  return ERR_PTR(-EPERM);

 buf = drm_gem_prime_export(gobj, flags);
 if (!IS_ERR(buf)) {
  buf->file->f_mapping = gobj->dev->anon_inode->i_mapping;
  buf->ops = &amdgpu_dmabuf_ops;
 }

 return buf;
}
