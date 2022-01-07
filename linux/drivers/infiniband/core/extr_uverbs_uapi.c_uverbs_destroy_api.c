
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uverbs_api {struct uverbs_api* write_methods; } ;


 int U32_MAX ;
 int kfree (struct uverbs_api*) ;
 int uapi_remove_range (struct uverbs_api*,int ,int ) ;

void uverbs_destroy_api(struct uverbs_api *uapi)
{
 if (!uapi)
  return;

 uapi_remove_range(uapi, 0, U32_MAX);
 kfree(uapi->write_methods);
 kfree(uapi);
}
