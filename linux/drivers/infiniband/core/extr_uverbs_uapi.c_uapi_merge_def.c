
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct uverbs_api_object {int dummy; } ;
struct uverbs_api {int dummy; } ;
struct TYPE_3__ {int object_id; } ;
struct uapi_definition {TYPE_1__ object_start; int (* func_is_supported ) (struct ib_device*) ;int needs_fn_offset; TYPE_2__* chain_obj_tree; struct uapi_definition* chain; int kind; } ;
struct ib_device {int ops; } ;
typedef enum uapi_definition_kind { ____Placeholder_uapi_definition_kind } uapi_definition_kind ;
struct TYPE_4__ {int id; } ;


 int EINVAL ;
 int IS_ERR (struct uverbs_api_object*) ;
 int PTR_ERR (struct uverbs_api_object*) ;







 int UVERBS_API_KEY_ERR ;
 int WARN_ON (int) ;
 int stub1 (struct ib_device*) ;
 struct uverbs_api_object* uapi_add_get_elm (struct uverbs_api*,int ,int,int*) ;
 int uapi_create_write (struct uverbs_api*,struct ib_device*,struct uapi_definition const*,int ,int *) ;
 int uapi_disable_elm (struct uverbs_api*,struct uapi_definition const*,int ,int ) ;
 int uapi_key_obj (int ) ;
 int uapi_merge_obj_tree (struct uverbs_api*,TYPE_2__*,int) ;

__attribute__((used)) static int uapi_merge_def(struct uverbs_api *uapi, struct ib_device *ibdev,
     const struct uapi_definition *def_list,
     bool is_driver)
{
 const struct uapi_definition *def = def_list;
 u32 cur_obj_key = UVERBS_API_KEY_ERR;
 u32 cur_method_key = UVERBS_API_KEY_ERR;
 bool exists;
 int rc;

 if (!def_list)
  return 0;

 for (;; def++) {
  switch ((enum uapi_definition_kind)def->kind) {
  case 134:
   rc = uapi_merge_def(uapi, ibdev, def->chain, is_driver);
   if (rc)
    return rc;
   continue;

  case 133:
   if (WARN_ON(def->object_start.object_id !=
        def->chain_obj_tree->id))
    return -EINVAL;

   cur_obj_key = uapi_key_obj(def->object_start.object_id);
   rc = uapi_merge_obj_tree(uapi, def->chain_obj_tree,
       is_driver);
   if (rc)
    return rc;
   continue;

  case 132:
   return 0;

  case 131: {
   void **ibdev_fn =
    (void *)(&ibdev->ops) + def->needs_fn_offset;

   if (*ibdev_fn)
    continue;
   rc = uapi_disable_elm(
    uapi, def, cur_obj_key, cur_method_key);
   if (rc)
    return rc;
   continue;
  }

  case 130:
   if (def->func_is_supported(ibdev))
    continue;
   rc = uapi_disable_elm(
    uapi, def, cur_obj_key, cur_method_key);
   if (rc)
    return rc;
   continue;

  case 129: {
   struct uverbs_api_object *obj_elm;

   cur_obj_key = uapi_key_obj(def->object_start.object_id);
   obj_elm = uapi_add_get_elm(uapi, cur_obj_key,
         sizeof(*obj_elm), &exists);
   if (IS_ERR(obj_elm))
    return PTR_ERR(obj_elm);
   continue;
  }

  case 128:
   rc = uapi_create_write(
    uapi, ibdev, def, cur_obj_key, &cur_method_key);
   if (rc)
    return rc;
   continue;
  }
  WARN_ON(1);
  return -EINVAL;
 }
}
