
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uverbs_attr_bundle {int dummy; } ;
struct uverbs_api_object {int dummy; } ;
struct ib_uobject {int dummy; } ;


 scalar_t__ IS_ERR (struct ib_uobject*) ;
 int PTR_ERR (struct ib_uobject*) ;
 int UVERBS_LOOKUP_WRITE ;
 struct ib_uobject* __uobj_get_destroy (struct uverbs_api_object const*,int ,struct uverbs_attr_bundle*) ;
 int rdma_lookup_put_uobject (struct ib_uobject*,int ) ;

int __uobj_perform_destroy(const struct uverbs_api_object *obj, u32 id,
      struct uverbs_attr_bundle *attrs)
{
 struct ib_uobject *uobj;

 uobj = __uobj_get_destroy(obj, id, attrs);
 if (IS_ERR(uobj))
  return PTR_ERR(uobj);

 rdma_lookup_put_uobject(uobj, UVERBS_LOOKUP_WRITE);
 return 0;
}
