
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t outlen; scalar_t__ outbuf; } ;
struct uverbs_attr_bundle {TYPE_1__ ucore; } ;


 int EFAULT ;
 int UVERBS_ATTR_CORE_OUT ;
 int clear_user (scalar_t__,size_t) ;
 scalar_t__ copy_to_user (scalar_t__,void const*,int ) ;
 int min (size_t,size_t) ;
 scalar_t__ uverbs_attr_is_valid (struct uverbs_attr_bundle*,int ) ;
 int uverbs_copy_to_struct_or_zero (struct uverbs_attr_bundle*,int ,void const*,size_t) ;

__attribute__((used)) static int uverbs_response(struct uverbs_attr_bundle *attrs, const void *resp,
      size_t resp_len)
{
 int ret;

 if (uverbs_attr_is_valid(attrs, UVERBS_ATTR_CORE_OUT))
  return uverbs_copy_to_struct_or_zero(
   attrs, UVERBS_ATTR_CORE_OUT, resp, resp_len);

 if (copy_to_user(attrs->ucore.outbuf, resp,
    min(attrs->ucore.outlen, resp_len)))
  return -EFAULT;

 if (resp_len < attrs->ucore.outlen) {




  ret = clear_user(attrs->ucore.outbuf + resp_len,
     attrs->ucore.outlen - resp_len);
  if (ret)
   return -EFAULT;
 }

 return 0;
}
