
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct safexcel_inv_result {int error; int completion; } ;
struct crypto_async_request {struct safexcel_inv_result* data; } ;


 int EINPROGRESS ;
 int complete (int *) ;

void safexcel_inv_complete(struct crypto_async_request *req, int error)
{
 struct safexcel_inv_result *result = req->data;

 if (error == -EINPROGRESS)
  return;

 result->error = error;
 complete(&result->completion);
}
