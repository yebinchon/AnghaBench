
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ttm_object_file {int dummy; } ;
struct ttm_base_object {scalar_t__ refcount_release; } ;


 int EINVAL ;
 struct ttm_base_object* ERR_PTR (int ) ;
 int pr_err (char*,unsigned long) ;
 struct ttm_base_object* ttm_base_object_lookup (struct ttm_object_file*,scalar_t__) ;
 int ttm_base_object_unref (struct ttm_base_object**) ;
 scalar_t__ vmw_user_fence_base_release ;

__attribute__((used)) static struct ttm_base_object *
vmw_fence_obj_lookup(struct ttm_object_file *tfile, u32 handle)
{
 struct ttm_base_object *base = ttm_base_object_lookup(tfile, handle);

 if (!base) {
  pr_err("Invalid fence object handle 0x%08lx.\n",
         (unsigned long)handle);
  return ERR_PTR(-EINVAL);
 }

 if (base->refcount_release != vmw_user_fence_base_release) {
  pr_err("Invalid fence object handle 0x%08lx.\n",
         (unsigned long)handle);
  ttm_base_object_unref(&base);
  return ERR_PTR(-EINVAL);
 }

 return base;
}
