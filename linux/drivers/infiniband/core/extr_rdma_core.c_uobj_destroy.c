
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uverbs_attr_bundle {struct ib_uverbs_file* ufile; } ;
struct ib_uverbs_file {int hw_destroy_rwsem; } ;
struct ib_uobject {int usecnt; } ;


 int RDMA_REMOVE_DESTROY ;
 int UVERBS_LOOKUP_WRITE ;
 int atomic_set (int *,int ) ;
 int down_read (int *) ;
 int up_read (int *) ;
 int uverbs_destroy_uobject (struct ib_uobject*,int ,struct uverbs_attr_bundle*) ;
 int uverbs_try_lock_object (struct ib_uobject*,int ) ;

int uobj_destroy(struct ib_uobject *uobj, struct uverbs_attr_bundle *attrs)
{
 struct ib_uverbs_file *ufile = attrs->ufile;
 int ret;

 down_read(&ufile->hw_destroy_rwsem);

 ret = uverbs_try_lock_object(uobj, UVERBS_LOOKUP_WRITE);
 if (ret)
  goto out_unlock;

 ret = uverbs_destroy_uobject(uobj, RDMA_REMOVE_DESTROY, attrs);
 if (ret) {
  atomic_set(&uobj->usecnt, 0);
  goto out_unlock;
 }

out_unlock:
 up_read(&ufile->hw_destroy_rwsem);
 return ret;
}
