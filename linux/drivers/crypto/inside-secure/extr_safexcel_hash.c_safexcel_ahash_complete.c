
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct safexcel_ahash_result {int error; int completion; } ;
struct crypto_async_request {struct safexcel_ahash_result* data; } ;


 int EINPROGRESS ;
 int complete (int *) ;

__attribute__((used)) static void safexcel_ahash_complete(struct crypto_async_request *req, int error)
{
 struct safexcel_ahash_result *result = req->data;

 if (error == -EINPROGRESS)
  return;

 result->error = error;
 complete(&result->completion);
}
