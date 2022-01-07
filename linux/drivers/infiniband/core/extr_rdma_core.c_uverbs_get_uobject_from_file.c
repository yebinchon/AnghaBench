
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct uverbs_attr_bundle {TYPE_2__* ufile; } ;
struct uverbs_api_object {int dummy; } ;
struct ib_uobject {int dummy; } ;
typedef int s64 ;
typedef enum uverbs_obj_access { ____Placeholder_uverbs_obj_access } uverbs_obj_access ;
struct TYPE_5__ {TYPE_1__* device; } ;
struct TYPE_4__ {int uapi; } ;


 int EOPNOTSUPP ;
 struct ib_uobject* ERR_PTR (int ) ;




 int UVERBS_LOOKUP_DESTROY ;
 int UVERBS_LOOKUP_READ ;
 int UVERBS_LOOKUP_WRITE ;
 int WARN_ON (int) ;
 struct ib_uobject* rdma_alloc_begin_uobject (struct uverbs_api_object const*,TYPE_2__*,struct uverbs_attr_bundle*) ;
 struct ib_uobject* rdma_lookup_get_uobject (struct uverbs_api_object const*,TYPE_2__*,int ,int ,struct uverbs_attr_bundle*) ;
 struct uverbs_api_object* uapi_get_object (int ,int ) ;

struct ib_uobject *
uverbs_get_uobject_from_file(u16 object_id, enum uverbs_obj_access access,
        s64 id, struct uverbs_attr_bundle *attrs)
{
 const struct uverbs_api_object *obj =
  uapi_get_object(attrs->ufile->device->uapi, object_id);

 switch (access) {
 case 129:
  return rdma_lookup_get_uobject(obj, attrs->ufile, id,
            UVERBS_LOOKUP_READ, attrs);
 case 131:

  return rdma_lookup_get_uobject(obj, attrs->ufile, id,
            UVERBS_LOOKUP_DESTROY, attrs);
 case 128:
  return rdma_lookup_get_uobject(obj, attrs->ufile, id,
            UVERBS_LOOKUP_WRITE, attrs);
 case 130:
  return rdma_alloc_begin_uobject(obj, attrs->ufile, attrs);
 default:
  WARN_ON(1);
  return ERR_PTR(-EOPNOTSUPP);
 }
}
