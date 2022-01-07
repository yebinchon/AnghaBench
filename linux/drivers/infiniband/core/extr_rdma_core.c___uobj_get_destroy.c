
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uverbs_attr_bundle {int ufile; } ;
struct uverbs_api_object {int dummy; } ;
struct ib_uobject {int dummy; } ;


 struct ib_uobject* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct ib_uobject*) ;
 int UVERBS_LOOKUP_DESTROY ;
 struct ib_uobject* rdma_lookup_get_uobject (struct uverbs_api_object const*,int ,int ,int ,struct uverbs_attr_bundle*) ;
 int rdma_lookup_put_uobject (struct ib_uobject*,int ) ;
 int uobj_destroy (struct ib_uobject*,struct uverbs_attr_bundle*) ;

struct ib_uobject *__uobj_get_destroy(const struct uverbs_api_object *obj,
          u32 id, struct uverbs_attr_bundle *attrs)
{
 struct ib_uobject *uobj;
 int ret;

 uobj = rdma_lookup_get_uobject(obj, attrs->ufile, id,
           UVERBS_LOOKUP_DESTROY, attrs);
 if (IS_ERR(uobj))
  return uobj;

 ret = uobj_destroy(uobj, attrs);
 if (ret) {
  rdma_lookup_put_uobject(uobj, UVERBS_LOOKUP_DESTROY);
  return ERR_PTR(ret);
 }

 return uobj;
}
