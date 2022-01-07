
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct uverbs_api_object {int dummy; } ;
struct uverbs_api {int radix; } ;


 int ENOENT ;
 int ENOMSG ;
 struct uverbs_api_object const* ERR_PTR (int ) ;
 scalar_t__ UVERBS_IDR_ANY_OBJECT ;
 struct uverbs_api_object* radix_tree_lookup (int *,int ) ;
 int uapi_key_obj (scalar_t__) ;

__attribute__((used)) static inline const struct uverbs_api_object *
uapi_get_object(struct uverbs_api *uapi, u16 object_id)
{
 const struct uverbs_api_object *res;

 if (object_id == UVERBS_IDR_ANY_OBJECT)
  return ERR_PTR(-ENOMSG);

 res = radix_tree_lookup(&uapi->radix, uapi_key_obj(object_id));
 if (!res)
  return ERR_PTR(-ENOENT);

 return res;
}
