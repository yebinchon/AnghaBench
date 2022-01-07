
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uverbs_attr_bundle {int dummy; } ;
struct ib_uobject {int dummy; } ;
typedef enum uverbs_obj_access { ____Placeholder_uverbs_obj_access } uverbs_obj_access ;


 int EOPNOTSUPP ;




 int UVERBS_LOOKUP_DESTROY ;
 int UVERBS_LOOKUP_READ ;
 int UVERBS_LOOKUP_WRITE ;
 int WARN_ON (int) ;
 int rdma_alloc_abort_uobject (struct ib_uobject*,struct uverbs_attr_bundle*) ;
 int rdma_alloc_commit_uobject (struct ib_uobject*,struct uverbs_attr_bundle*) ;
 int rdma_lookup_put_uobject (struct ib_uobject*,int ) ;

int uverbs_finalize_object(struct ib_uobject *uobj,
      enum uverbs_obj_access access, bool commit,
      struct uverbs_attr_bundle *attrs)
{
 int ret = 0;







 switch (access) {
 case 129:
  rdma_lookup_put_uobject(uobj, UVERBS_LOOKUP_READ);
  break;
 case 128:
  rdma_lookup_put_uobject(uobj, UVERBS_LOOKUP_WRITE);
  break;
 case 131:
  if (uobj)
   rdma_lookup_put_uobject(uobj, UVERBS_LOOKUP_DESTROY);
  break;
 case 130:
  if (commit)
   ret = rdma_alloc_commit_uobject(uobj, attrs);
  else
   rdma_alloc_abort_uobject(uobj, attrs);
  break;
 default:
  WARN_ON(1);
  ret = -EOPNOTSUPP;
 }

 return ret;
}
