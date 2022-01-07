
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uverbs_api_object {int dummy; } ;
struct ib_uverbs_file {int idr; } ;
struct ib_uobject {int id; TYPE_1__* context; int cg_obj; } ;
struct TYPE_2__ {int device; } ;


 struct ib_uobject* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct ib_uobject*) ;
 int RDMACG_RESOURCE_HCA_OBJECT ;
 struct ib_uobject* alloc_uobj (struct ib_uverbs_file*,struct uverbs_api_object const*) ;
 int ib_rdmacg_try_charge (int *,int ,int ) ;
 int idr_add_uobj (struct ib_uobject*) ;
 int uverbs_uobject_put (struct ib_uobject*) ;
 int xa_erase (int *,int ) ;

__attribute__((used)) static struct ib_uobject *
alloc_begin_idr_uobject(const struct uverbs_api_object *obj,
   struct ib_uverbs_file *ufile)
{
 int ret;
 struct ib_uobject *uobj;

 uobj = alloc_uobj(ufile, obj);
 if (IS_ERR(uobj))
  return uobj;

 ret = idr_add_uobj(uobj);
 if (ret)
  goto uobj_put;

 ret = ib_rdmacg_try_charge(&uobj->cg_obj, uobj->context->device,
       RDMACG_RESOURCE_HCA_OBJECT);
 if (ret)
  goto remove;

 return uobj;

remove:
 xa_erase(&ufile->idr, uobj->id);
uobj_put:
 uverbs_uobject_put(uobj);
 return ERR_PTR(ret);
}
