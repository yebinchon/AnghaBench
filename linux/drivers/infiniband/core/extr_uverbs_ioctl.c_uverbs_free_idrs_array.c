
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uverbs_objs_arr_attr {size_t len; int * uobjects; } ;
struct TYPE_3__ {int access; } ;
struct TYPE_4__ {TYPE_1__ objs_arr; } ;
struct uverbs_attr_spec {TYPE_2__ u2; } ;
struct uverbs_attr_bundle {int dummy; } ;
struct uverbs_api_attr {struct uverbs_attr_spec spec; } ;


 int uverbs_finalize_object (int ,int ,int,struct uverbs_attr_bundle*) ;

__attribute__((used)) static int uverbs_free_idrs_array(const struct uverbs_api_attr *attr_uapi,
      struct uverbs_objs_arr_attr *attr,
      bool commit, struct uverbs_attr_bundle *attrs)
{
 const struct uverbs_attr_spec *spec = &attr_uapi->spec;
 int current_ret;
 int ret = 0;
 size_t i;

 for (i = 0; i != attr->len; i++) {
  current_ret = uverbs_finalize_object(attr->uobjects[i],
           spec->u2.objs_arr.access,
           commit, attrs);
  if (!ret)
   ret = current_ret;
 }

 return ret;
}
