
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qce_device {int dummy; } ;
struct crypto_async_request {int dummy; } ;


 int qce_handle_queue (struct qce_device*,struct crypto_async_request*) ;

__attribute__((used)) static int qce_async_request_enqueue(struct qce_device *qce,
         struct crypto_async_request *req)
{
 return qce_handle_queue(qce, req);
}
