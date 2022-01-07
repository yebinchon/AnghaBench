
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv_cesa_engine {int queue; } ;
struct crypto_async_request {int dummy; } ;


 struct crypto_async_request* crypto_dequeue_request (int *) ;
 struct crypto_async_request* crypto_get_backlog (int *) ;

struct crypto_async_request *
mv_cesa_dequeue_req_locked(struct mv_cesa_engine *engine,
      struct crypto_async_request **backlog)
{
 struct crypto_async_request *req;

 *backlog = crypto_get_backlog(&engine->queue);
 req = crypto_dequeue_request(&engine->queue);

 if (!req)
  return ((void*)0);

 return req;
}
