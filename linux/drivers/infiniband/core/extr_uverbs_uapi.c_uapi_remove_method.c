
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uverbs_api {int dummy; } ;


 int UVERBS_API_ATTR_KEY_MASK ;
 int uapi_remove_range (struct uverbs_api*,int,int) ;

__attribute__((used)) static void uapi_remove_method(struct uverbs_api *uapi, u32 method_key)
{
 uapi_remove_range(uapi, method_key,
     method_key | UVERBS_API_ATTR_KEY_MASK);
}
