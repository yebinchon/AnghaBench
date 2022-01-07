
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uverbs_attr_bundle {int context; } ;
struct uverbs_api_object {TYPE_2__* type_class; struct uverbs_api_object const* uapi_object; int context; } ;
struct ib_uverbs_file {TYPE_1__* device; } ;
typedef struct ib_uobject {TYPE_2__* type_class; struct ib_uobject const* uapi_object; int context; } const ib_uobject ;
typedef int s64 ;
typedef enum rdma_lookup_mode { ____Placeholder_rdma_lookup_mode } rdma_lookup_mode ;
struct TYPE_4__ {int (* lookup_put ) (struct uverbs_api_object const*,int) ;struct uverbs_api_object* (* lookup_get ) (struct uverbs_api_object const*,struct ib_uverbs_file*,int ,int) ;} ;
struct TYPE_3__ {int disassociate_srcu; int ib_dev; } ;


 int EINVAL ;
 int EIO ;
 int ENOMSG ;
 struct uverbs_api_object const* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct uverbs_api_object const*) ;
 int UVERBS_LOOKUP_DESTROY ;
 struct uverbs_api_object* lookup_get_idr_uobject (int *,struct ib_uverbs_file*,int ,int) ;
 int srcu_dereference (int ,int *) ;
 struct uverbs_api_object* stub1 (struct uverbs_api_object const*,struct ib_uverbs_file*,int ,int) ;
 int stub2 (struct uverbs_api_object const*,int) ;
 int uverbs_try_lock_object (struct uverbs_api_object const*,int) ;
 int uverbs_uobject_put (struct uverbs_api_object const*) ;

struct ib_uobject *rdma_lookup_get_uobject(const struct uverbs_api_object *obj,
        struct ib_uverbs_file *ufile, s64 id,
        enum rdma_lookup_mode mode,
        struct uverbs_attr_bundle *attrs)
{
 struct ib_uobject *uobj;
 int ret;

 if (obj == ERR_PTR(-ENOMSG)) {

  uobj = lookup_get_idr_uobject(((void*)0), ufile, id, mode);
  if (IS_ERR(uobj))
   return uobj;
 } else {
  if (IS_ERR(obj))
   return ERR_PTR(-EINVAL);

  uobj = obj->type_class->lookup_get(obj, ufile, id, mode);
  if (IS_ERR(uobj))
   return uobj;

  if (uobj->uapi_object != obj) {
   ret = -EINVAL;
   goto free;
  }
 }





 if (mode != UVERBS_LOOKUP_DESTROY &&
     !srcu_dereference(ufile->device->ib_dev,
         &ufile->device->disassociate_srcu)) {
  ret = -EIO;
  goto free;
 }

 ret = uverbs_try_lock_object(uobj, mode);
 if (ret)
  goto free;
 if (attrs)
  attrs->context = uobj->context;

 return uobj;
free:
 uobj->uapi_object->type_class->lookup_put(uobj, mode);
 uverbs_uobject_put(uobj);
 return ERR_PTR(ret);
}
