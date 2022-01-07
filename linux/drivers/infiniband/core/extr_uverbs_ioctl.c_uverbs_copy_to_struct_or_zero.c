
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uverbs_attr_bundle {int dummy; } ;
struct TYPE_2__ {size_t len; int data; } ;
struct uverbs_attr {TYPE_1__ ptr_attr; } ;


 int EFAULT ;
 scalar_t__ clear_user (scalar_t__,size_t) ;
 scalar_t__ u64_to_user_ptr (int ) ;
 struct uverbs_attr* uverbs_attr_get (struct uverbs_attr_bundle const*,size_t) ;
 int uverbs_copy_to (struct uverbs_attr_bundle const*,size_t,void const*,size_t) ;

int uverbs_copy_to_struct_or_zero(const struct uverbs_attr_bundle *bundle,
      size_t idx, const void *from, size_t size)
{
 const struct uverbs_attr *attr = uverbs_attr_get(bundle, idx);

 if (size < attr->ptr_attr.len) {
  if (clear_user(u64_to_user_ptr(attr->ptr_attr.data) + size,
          attr->ptr_attr.len - size))
   return -EFAULT;
 }
 return uverbs_copy_to(bundle, idx, from, size);
}
