
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct uverbs_objs_arr_attr {size_t len; int ** uobjects; } ;
struct TYPE_5__ {size_t min_len; size_t max_len; int access; int obj_type; } ;
struct TYPE_6__ {TYPE_2__ objs_arr; } ;
struct uverbs_attr_spec {TYPE_3__ u2; } ;
struct uverbs_api_attr {struct uverbs_attr_spec spec; } ;
struct TYPE_4__ {scalar_t__ reserved; } ;
struct ib_uverbs_attr {int len; int data; TYPE_1__ attr_data; } ;
struct bundle_priv {int spec_finalize; int bundle; } ;


 int EFAULT ;
 int EINVAL ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int __set_bit (int ,int ) ;
 int array_size (size_t,int) ;
 int copy_from_user (int *,int ,int) ;
 int memcpy (int *,int *,int) ;
 int u64_to_user_ptr (int ) ;
 int * uverbs_alloc (int *,int ) ;
 int uverbs_get_uobject_from_file (int ,int ,int ,int *) ;

__attribute__((used)) static int uverbs_process_idrs_array(struct bundle_priv *pbundle,
         const struct uverbs_api_attr *attr_uapi,
         struct uverbs_objs_arr_attr *attr,
         struct ib_uverbs_attr *uattr,
         u32 attr_bkey)
{
 const struct uverbs_attr_spec *spec = &attr_uapi->spec;
 size_t array_len;
 u32 *idr_vals;
 int ret = 0;
 size_t i;

 if (uattr->attr_data.reserved)
  return -EINVAL;

 if (uattr->len % sizeof(u32))
  return -EINVAL;

 array_len = uattr->len / sizeof(u32);
 if (array_len < spec->u2.objs_arr.min_len ||
     array_len > spec->u2.objs_arr.max_len)
  return -EINVAL;

 attr->uobjects =
  uverbs_alloc(&pbundle->bundle,
        array_size(array_len, sizeof(*attr->uobjects)));
 if (IS_ERR(attr->uobjects))
  return PTR_ERR(attr->uobjects);







 idr_vals = (u32 *)(attr->uobjects + array_len) - array_len;

 if (uattr->len > sizeof(uattr->data)) {
  ret = copy_from_user(idr_vals, u64_to_user_ptr(uattr->data),
         uattr->len);
  if (ret)
   return -EFAULT;
 } else {
  memcpy(idr_vals, &uattr->data, uattr->len);
 }

 for (i = 0; i != array_len; i++) {
  attr->uobjects[i] = uverbs_get_uobject_from_file(
   spec->u2.objs_arr.obj_type, spec->u2.objs_arr.access,
   idr_vals[i], &pbundle->bundle);
  if (IS_ERR(attr->uobjects[i])) {
   ret = PTR_ERR(attr->uobjects[i]);
   break;
  }
 }

 attr->len = i;
 __set_bit(attr_bkey, pbundle->spec_finalize);
 return ret;
}
