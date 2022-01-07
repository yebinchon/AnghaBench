
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_aes_gcm_result {int err; int completion; } ;
struct crypto_async_request {struct omap_aes_gcm_result* data; } ;


 int EINPROGRESS ;
 int complete (int *) ;

__attribute__((used)) static void omap_aes_gcm_complete(struct crypto_async_request *req, int err)
{
 struct omap_aes_gcm_result *res = req->data;

 if (err == -EINPROGRESS)
  return;

 res->err = err;
 complete(&res->completion);
}
