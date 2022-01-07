
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int u32 ;
struct vmw_user_resource_conv {int dummy; } ;
struct vmw_sw_context {int buf_start; TYPE_1__* fp; int ctx; struct vmw_res_cache_entry* res_cache; } ;
struct vmw_resource {int dummy; } ;
struct vmw_res_cache_entry {int valid_handle; scalar_t__ handle; struct vmw_resource* res; scalar_t__ valid; int private; } ;
struct vmw_private {int dummy; } ;
typedef enum vmw_res_type { ____Placeholder_vmw_res_type } vmw_res_type ;
struct TYPE_2__ {int tfile; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct vmw_resource*) ;
 int PTR_ERR (struct vmw_resource*) ;
 scalar_t__ SVGA3D_INVALID_ID ;
 int VMW_DEBUG_USER (char*,...) ;
 scalar_t__ likely (int) ;
 scalar_t__ unlikely (int) ;
 int vmw_execbuf_res_noref_val_add (struct vmw_sw_context*,struct vmw_resource*,int ) ;
 unsigned int vmw_execbuf_res_size (struct vmw_private*,int) ;
 int vmw_ptr_diff (int ,scalar_t__*) ;
 int vmw_res_context ;
 int vmw_res_rel_normal ;
 int vmw_resource_relocation_add (struct vmw_sw_context*,struct vmw_resource*,int ,int ) ;
 struct vmw_resource* vmw_user_resource_noref_lookup_handle (struct vmw_private*,int ,scalar_t__,struct vmw_user_resource_conv const*) ;
 int vmw_validation_preload_res (int ,unsigned int) ;
 int vmw_validation_res_set_dirty (int ,int ,int ) ;

__attribute__((used)) static int
vmw_cmd_res_check(struct vmw_private *dev_priv,
    struct vmw_sw_context *sw_context,
    enum vmw_res_type res_type,
    u32 dirty,
    const struct vmw_user_resource_conv *converter,
    uint32_t *id_loc,
    struct vmw_resource **p_res)
{
 struct vmw_res_cache_entry *rcache = &sw_context->res_cache[res_type];
 struct vmw_resource *res;
 int ret;

 if (p_res)
  *p_res = ((void*)0);

 if (*id_loc == SVGA3D_INVALID_ID) {
  if (res_type == vmw_res_context) {
   VMW_DEBUG_USER("Illegal context invalid id.\n");
   return -EINVAL;
  }
  return 0;
 }

 if (likely(rcache->valid_handle && *id_loc == rcache->handle)) {
  res = rcache->res;
  if (dirty)
   vmw_validation_res_set_dirty(sw_context->ctx,
           rcache->private, dirty);
 } else {
  unsigned int size = vmw_execbuf_res_size(dev_priv, res_type);

  ret = vmw_validation_preload_res(sw_context->ctx, size);
  if (ret)
   return ret;

  res = vmw_user_resource_noref_lookup_handle
   (dev_priv, sw_context->fp->tfile, *id_loc, converter);
  if (IS_ERR(res)) {
   VMW_DEBUG_USER("Could not find/use resource 0x%08x.\n",
           (unsigned int) *id_loc);
   return PTR_ERR(res);
  }

  ret = vmw_execbuf_res_noref_val_add(sw_context, res, dirty);
  if (unlikely(ret != 0))
   return ret;

  if (rcache->valid && rcache->res == res) {
   rcache->valid_handle = 1;
   rcache->handle = *id_loc;
  }
 }

 ret = vmw_resource_relocation_add(sw_context, res,
       vmw_ptr_diff(sw_context->buf_start,
             id_loc),
       vmw_res_rel_normal);
 if (p_res)
  *p_res = res;

 return 0;
}
