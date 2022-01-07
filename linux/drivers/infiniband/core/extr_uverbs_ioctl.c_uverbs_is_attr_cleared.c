
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ib_uverbs_attr {int len; int data; } ;


 int ib_is_buffer_cleared (int,int) ;
 int memchr_inv (void const*,int ,int) ;
 int u64_to_user_ptr (int ) ;

__attribute__((used)) static bool uverbs_is_attr_cleared(const struct ib_uverbs_attr *uattr,
       u16 len)
{
 if (uattr->len > sizeof(((struct ib_uverbs_attr *)0)->data))
  return ib_is_buffer_cleared(u64_to_user_ptr(uattr->data) + len,
         uattr->len - len);

 return !memchr_inv((const void *)&uattr->data + len,
      0, uattr->len - len);
}
