
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uverbs_attr_bundle {struct ib_uverbs_file* ufile; } ;
struct ib_uverbs_file {int uobjects_lock; int hw_destroy_rwsem; } ;
struct ib_uobject {int list; TYPE_2__* uapi_object; int usecnt; int * context; int * object; int id; } ;
typedef enum rdma_remove_reason { ____Placeholder_rdma_remove_reason } rdma_remove_reason ;
struct TYPE_4__ {TYPE_1__* type_class; } ;
struct TYPE_3__ {int (* destroy_hw ) (struct ib_uobject*,int,struct uverbs_attr_bundle*) ;int (* remove_handle ) (struct ib_uobject*) ;int (* alloc_abort ) (struct ib_uobject*) ;} ;


 int RDMA_REMOVE_ABORT ;
 int RDMA_REMOVE_DESTROY ;
 int UVERBS_LOOKUP_WRITE ;
 int WARN (int,char*,int ,int) ;
 int WARN_ON (int) ;
 int assert_uverbs_usecnt (struct ib_uobject*,int ) ;
 int atomic_set (int *,int ) ;
 scalar_t__ ib_is_destroy_retryable (int,int,struct ib_uobject*) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int lockdep_assert_held (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct ib_uobject*,int,struct uverbs_attr_bundle*) ;
 int stub2 (struct ib_uobject*) ;
 int stub3 (struct ib_uobject*) ;
 int uverbs_uobject_put (struct ib_uobject*) ;

__attribute__((used)) static int uverbs_destroy_uobject(struct ib_uobject *uobj,
      enum rdma_remove_reason reason,
      struct uverbs_attr_bundle *attrs)
{
 struct ib_uverbs_file *ufile = attrs->ufile;
 unsigned long flags;
 int ret;

 lockdep_assert_held(&ufile->hw_destroy_rwsem);
 assert_uverbs_usecnt(uobj, UVERBS_LOOKUP_WRITE);

 if (uobj->object) {
  ret = uobj->uapi_object->type_class->destroy_hw(uobj, reason,
        attrs);
  if (ret) {
   if (ib_is_destroy_retryable(ret, reason, uobj))
    return ret;


   WARN(1,
        "ib_uverbs: failed to remove uobject id %d, driver err=%d",
        uobj->id, ret);
  }

  uobj->object = ((void*)0);
 }

 if (reason == RDMA_REMOVE_ABORT) {
  WARN_ON(!list_empty(&uobj->list));
  WARN_ON(!uobj->context);
  uobj->uapi_object->type_class->alloc_abort(uobj);
 }

 uobj->context = ((void*)0);






 if (reason != RDMA_REMOVE_DESTROY)
  atomic_set(&uobj->usecnt, 0);
 else
  uobj->uapi_object->type_class->remove_handle(uobj);

 if (!list_empty(&uobj->list)) {
  spin_lock_irqsave(&ufile->uobjects_lock, flags);
  list_del_init(&uobj->list);
  spin_unlock_irqrestore(&ufile->uobjects_lock, flags);





  uverbs_uobject_put(uobj);
 }





 if (reason == RDMA_REMOVE_ABORT)
  uverbs_uobject_put(uobj);

 return 0;
}
