
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vmw_user_resource_conv {scalar_t__ object_type; struct vmw_resource* (* base_obj_to_res ) (struct ttm_base_object*) ;} ;
struct vmw_resource {int kref; } ;
struct vmw_private {int dummy; } ;
struct ttm_object_file {int dummy; } ;
struct ttm_base_object {int dummy; } ;


 int EINVAL ;
 int kref_get (int *) ;
 struct vmw_resource* stub1 (struct ttm_base_object*) ;
 struct ttm_base_object* ttm_base_object_lookup (struct ttm_object_file*,int ) ;
 scalar_t__ ttm_base_object_type (struct ttm_base_object*) ;
 int ttm_base_object_unref (struct ttm_base_object**) ;
 scalar_t__ unlikely (int) ;

int vmw_user_resource_lookup_handle(struct vmw_private *dev_priv,
        struct ttm_object_file *tfile,
        uint32_t handle,
        const struct vmw_user_resource_conv
        *converter,
        struct vmw_resource **p_res)
{
 struct ttm_base_object *base;
 struct vmw_resource *res;
 int ret = -EINVAL;

 base = ttm_base_object_lookup(tfile, handle);
 if (unlikely(base == ((void*)0)))
  return -EINVAL;

 if (unlikely(ttm_base_object_type(base) != converter->object_type))
  goto out_bad_resource;

 res = converter->base_obj_to_res(base);
 kref_get(&res->kref);

 *p_res = res;
 ret = 0;

out_bad_resource:
 ttm_base_object_unref(&base);

 return ret;
}
