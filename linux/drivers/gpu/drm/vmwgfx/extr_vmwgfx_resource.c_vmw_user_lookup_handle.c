
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vmw_surface {int dummy; } ;
struct vmw_resource {int dummy; } ;
struct vmw_private {int dummy; } ;
struct vmw_buffer_object {int dummy; } ;
struct ttm_object_file {int dummy; } ;


 int BUG_ON (int) ;
 int user_surface_converter ;
 struct vmw_surface* vmw_res_to_srf (struct vmw_resource*) ;
 int vmw_user_bo_lookup (struct ttm_object_file*,int ,struct vmw_buffer_object**,int *) ;
 int vmw_user_resource_lookup_handle (struct vmw_private*,struct ttm_object_file*,int ,int ,struct vmw_resource**) ;

int vmw_user_lookup_handle(struct vmw_private *dev_priv,
      struct ttm_object_file *tfile,
      uint32_t handle,
      struct vmw_surface **out_surf,
      struct vmw_buffer_object **out_buf)
{
 struct vmw_resource *res;
 int ret;

 BUG_ON(*out_surf || *out_buf);

 ret = vmw_user_resource_lookup_handle(dev_priv, tfile, handle,
           user_surface_converter,
           &res);
 if (!ret) {
  *out_surf = vmw_res_to_srf(res);
  return 0;
 }

 *out_surf = ((void*)0);
 ret = vmw_user_bo_lookup(tfile, handle, out_buf, ((void*)0));
 return ret;
}
