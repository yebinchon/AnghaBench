
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct vmw_surface {int dummy; } ;
struct vmw_resource {int id; scalar_t__ backup_size; struct vmw_private* dev_priv; } ;
struct vmw_private {scalar_t__ used_memory_size; scalar_t__ memory_size; } ;


 int DRM_ERROR (char*) ;
 int EBUSY ;
 int ENOMEM ;
 int SVGA3D_MAX_SURFACE_IDS ;
 int * VMW_FIFO_RESERVE (struct vmw_private*,int ) ;
 scalar_t__ likely (int) ;
 scalar_t__ unlikely (int) ;
 int vmw_fifo_commit (struct vmw_private*,int ) ;
 int vmw_fifo_resource_inc (struct vmw_private*) ;
 struct vmw_surface* vmw_res_to_srf (struct vmw_resource*) ;
 int vmw_resource_alloc_id (struct vmw_resource*) ;
 int vmw_resource_release_id (struct vmw_resource*) ;
 int vmw_surface_define_encode (struct vmw_surface*,int *) ;
 int vmw_surface_define_size (struct vmw_surface*) ;

__attribute__((used)) static int vmw_legacy_srf_create(struct vmw_resource *res)
{
 struct vmw_private *dev_priv = res->dev_priv;
 struct vmw_surface *srf;
 uint32_t submit_size;
 uint8_t *cmd;
 int ret;

 if (likely(res->id != -1))
  return 0;

 srf = vmw_res_to_srf(res);
 if (unlikely(dev_priv->used_memory_size + res->backup_size >=
       dev_priv->memory_size))
  return -EBUSY;





 ret = vmw_resource_alloc_id(res);
 if (unlikely(ret != 0)) {
  DRM_ERROR("Failed to allocate a surface id.\n");
  goto out_no_id;
 }

 if (unlikely(res->id >= SVGA3D_MAX_SURFACE_IDS)) {
  ret = -EBUSY;
  goto out_no_fifo;
 }





 submit_size = vmw_surface_define_size(srf);
 cmd = VMW_FIFO_RESERVE(dev_priv, submit_size);
 if (unlikely(!cmd)) {
  ret = -ENOMEM;
  goto out_no_fifo;
 }

 vmw_surface_define_encode(srf, cmd);
 vmw_fifo_commit(dev_priv, submit_size);
 vmw_fifo_resource_inc(dev_priv);





 dev_priv->used_memory_size += res->backup_size;
 return 0;

out_no_fifo:
 vmw_resource_release_id(res);
out_no_id:
 return ret;
}
