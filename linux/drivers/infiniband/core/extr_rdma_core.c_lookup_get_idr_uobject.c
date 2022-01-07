
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uverbs_api_object {int dummy; } ;
struct ib_uverbs_file {int idr; } ;
struct ib_uobject {int ref; } ;
typedef scalar_t__ s64 ;
typedef enum rdma_lookup_mode { ____Placeholder_rdma_lookup_mode } rdma_lookup_mode ;


 int EINVAL ;
 int ENOENT ;
 struct ib_uobject* ERR_PTR (int ) ;
 scalar_t__ ULONG_MAX ;
 int kref_get_unless_zero (int *) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct ib_uobject* xa_load (int *,scalar_t__) ;

__attribute__((used)) static struct ib_uobject *
lookup_get_idr_uobject(const struct uverbs_api_object *obj,
         struct ib_uverbs_file *ufile, s64 id,
         enum rdma_lookup_mode mode)
{
 struct ib_uobject *uobj;

 if (id < 0 || id > ULONG_MAX)
  return ERR_PTR(-EINVAL);

 rcu_read_lock();






 uobj = xa_load(&ufile->idr, id);
 if (!uobj || !kref_get_unless_zero(&uobj->ref))
  uobj = ERR_PTR(-ENOENT);
 rcu_read_unlock();
 return uobj;
}
