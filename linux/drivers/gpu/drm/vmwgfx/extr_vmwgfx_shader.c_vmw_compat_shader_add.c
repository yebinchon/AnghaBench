
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vmw_resource {int dummy; } ;
struct vmw_private {int dummy; } ;
struct vmw_cmdbuf_res_manager {int dummy; } ;
struct vmw_buffer_object {int base; } ;
struct ttm_operation_ctx {int member_0; int member_1; } ;
struct ttm_bo_kmap_obj {int dummy; } ;
struct list_head {int dummy; } ;
typedef int SVGA3dShaderType ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_ALIGN (size_t) ;
 int PAGE_SHIFT ;
 int WARN_ON (int) ;
 struct vmw_buffer_object* kzalloc (int,int ) ;
 int memcpy (int ,void const*,size_t) ;
 int ttm_bo_kmap (int *,int ,int,struct ttm_bo_kmap_obj*) ;
 int ttm_bo_kunmap (struct ttm_bo_kmap_obj*) ;
 int ttm_bo_reserve (int *,int,int,int *) ;
 int ttm_bo_unreserve (int *) ;
 int ttm_bo_validate (int *,int *,struct ttm_operation_ctx*) ;
 int ttm_kmap_obj_virtual (struct ttm_bo_kmap_obj*,int*) ;
 scalar_t__ unlikely (int) ;
 int vmw_bo_bo_free ;
 int vmw_bo_init (struct vmw_private*,struct vmw_buffer_object*,size_t,int *,int,int ) ;
 int vmw_bo_unreference (struct vmw_buffer_object**) ;
 int vmw_cmdbuf_res_add (struct vmw_cmdbuf_res_manager*,int ,int ,struct vmw_resource*,struct list_head*) ;
 int vmw_cmdbuf_res_shader ;
 int vmw_resource_unreference (struct vmw_resource**) ;
 struct vmw_resource* vmw_shader_alloc (struct vmw_private*,struct vmw_buffer_object*,size_t,int ,int ) ;
 int vmw_shader_id_ok (int ,int ) ;
 int vmw_shader_key (int ,int ) ;
 int vmw_sys_ne_placement ;
 int vmw_sys_placement ;

int vmw_compat_shader_add(struct vmw_private *dev_priv,
     struct vmw_cmdbuf_res_manager *man,
     u32 user_key, const void *bytecode,
     SVGA3dShaderType shader_type,
     size_t size,
     struct list_head *list)
{
 struct ttm_operation_ctx ctx = { 0, 1 };
 struct vmw_buffer_object *buf;
 struct ttm_bo_kmap_obj map;
 bool is_iomem;
 int ret;
 struct vmw_resource *res;

 if (!vmw_shader_id_ok(user_key, shader_type))
  return -EINVAL;


 buf = kzalloc(sizeof(*buf), GFP_KERNEL);
 if (unlikely(!buf))
  return -ENOMEM;

 ret = vmw_bo_init(dev_priv, buf, size, &vmw_sys_ne_placement,
         1, vmw_bo_bo_free);
 if (unlikely(ret != 0))
  goto out;

 ret = ttm_bo_reserve(&buf->base, 0, 1, ((void*)0));
 if (unlikely(ret != 0))
  goto no_reserve;


 ret = ttm_bo_kmap(&buf->base, 0, PAGE_ALIGN(size) >> PAGE_SHIFT,
     &map);
 if (unlikely(ret != 0)) {
  ttm_bo_unreserve(&buf->base);
  goto no_reserve;
 }

 memcpy(ttm_kmap_obj_virtual(&map, &is_iomem), bytecode, size);
 WARN_ON(is_iomem);

 ttm_bo_kunmap(&map);
 ret = ttm_bo_validate(&buf->base, &vmw_sys_placement, &ctx);
 WARN_ON(ret != 0);
 ttm_bo_unreserve(&buf->base);

 res = vmw_shader_alloc(dev_priv, buf, size, 0, shader_type);
 if (unlikely(ret != 0))
  goto no_reserve;

 ret = vmw_cmdbuf_res_add(man, vmw_cmdbuf_res_shader,
     vmw_shader_key(user_key, shader_type),
     res, list);
 vmw_resource_unreference(&res);
no_reserve:
 vmw_bo_unreference(&buf);
out:
 return ret;
}
