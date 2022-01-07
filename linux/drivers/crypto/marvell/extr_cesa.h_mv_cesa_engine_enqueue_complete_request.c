
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv_cesa_engine {int complete_queue; } ;
struct crypto_async_request {int list; } ;


 int list_add_tail (int *,int *) ;

__attribute__((used)) static inline void
mv_cesa_engine_enqueue_complete_request(struct mv_cesa_engine *engine,
     struct crypto_async_request *req)
{
 list_add_tail(&req->list, &engine->complete_queue);
}
