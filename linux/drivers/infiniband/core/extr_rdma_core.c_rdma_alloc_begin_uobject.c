
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uverbs_attr_bundle {int context; } ;
struct uverbs_api_object {int context; TYPE_1__* type_class; } ;
struct ib_uverbs_file {int hw_destroy_rwsem; } ;
typedef struct ib_uobject {int context; TYPE_1__* type_class; } const ib_uobject ;
struct TYPE_2__ {struct uverbs_api_object* (* alloc_begin ) (struct uverbs_api_object const*,struct ib_uverbs_file*) ;} ;


 int EINVAL ;
 int EIO ;
 struct uverbs_api_object const* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct uverbs_api_object const*) ;
 int down_read_trylock (int *) ;
 struct uverbs_api_object* stub1 (struct uverbs_api_object const*,struct ib_uverbs_file*) ;
 int up_read (int *) ;

struct ib_uobject *rdma_alloc_begin_uobject(const struct uverbs_api_object *obj,
         struct ib_uverbs_file *ufile,
         struct uverbs_attr_bundle *attrs)
{
 struct ib_uobject *ret;

 if (IS_ERR(obj))
  return ERR_PTR(-EINVAL);






 if (!down_read_trylock(&ufile->hw_destroy_rwsem))
  return ERR_PTR(-EIO);

 ret = obj->type_class->alloc_begin(obj, ufile);
 if (IS_ERR(ret)) {
  up_read(&ufile->hw_destroy_rwsem);
  return ret;
 }
 if (attrs)
  attrs->context = ret->context;
 return ret;
}
