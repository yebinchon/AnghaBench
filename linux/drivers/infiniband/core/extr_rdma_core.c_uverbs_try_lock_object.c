
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_uobject {int usecnt; } ;
typedef enum rdma_lookup_mode { ____Placeholder_rdma_lookup_mode } rdma_lookup_mode ;


 int EBUSY ;



 int atomic_cmpxchg (int *,int ,int) ;
 int atomic_fetch_add_unless (int *,int,int) ;

__attribute__((used)) static int uverbs_try_lock_object(struct ib_uobject *uobj,
      enum rdma_lookup_mode mode)
{
 switch (mode) {
 case 129:
  return atomic_fetch_add_unless(&uobj->usecnt, 1, -1) == -1 ?
   -EBUSY : 0;
 case 128:

  return atomic_cmpxchg(&uobj->usecnt, 0, -1) == 0 ? 0 : -EBUSY;
 case 130:
  return 0;
 }
 return 0;
}
