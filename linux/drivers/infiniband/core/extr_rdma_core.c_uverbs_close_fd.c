
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uverbs_attr_bundle {struct ib_uverbs_file* ufile; int context; } ;
struct ib_uverbs_file {int ref; int hw_destroy_rwsem; } ;
struct ib_uobject {int context; struct ib_uverbs_file* ufile; } ;
struct file {struct ib_uobject* private_data; } ;


 int RDMA_REMOVE_CLOSE ;
 int UVERBS_LOOKUP_WRITE ;
 int WARN_ON (int ) ;
 scalar_t__ down_read_trylock (int *) ;
 int ib_uverbs_release_file ;
 int kref_put (int *,int ) ;
 int up_read (int *) ;
 int uverbs_destroy_uobject (struct ib_uobject*,int ,struct uverbs_attr_bundle*) ;
 int uverbs_try_lock_object (struct ib_uobject*,int ) ;
 int uverbs_uobject_put (struct ib_uobject*) ;

void uverbs_close_fd(struct file *f)
{
 struct ib_uobject *uobj = f->private_data;
 struct ib_uverbs_file *ufile = uobj->ufile;
 struct uverbs_attr_bundle attrs = {
  .context = uobj->context,
  .ufile = ufile,
 };

 if (down_read_trylock(&ufile->hw_destroy_rwsem)) {






  WARN_ON(uverbs_try_lock_object(uobj, UVERBS_LOOKUP_WRITE));
  uverbs_destroy_uobject(uobj, RDMA_REMOVE_CLOSE, &attrs);
  up_read(&ufile->hw_destroy_rwsem);
 }


 kref_put(&ufile->ref, ib_uverbs_release_file);


 uverbs_uobject_put(uobj);
}
