
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_request {int dummy; } ;
struct mv_cesa_skcipher_std_req {scalar_t__ offset; scalar_t__ size; } ;
struct mv_cesa_skcipher_req {struct mv_cesa_skcipher_std_req std; } ;


 struct mv_cesa_skcipher_req* skcipher_request_ctx (struct skcipher_request*) ;

__attribute__((used)) static inline void
mv_cesa_skcipher_std_prepare(struct skcipher_request *req)
{
 struct mv_cesa_skcipher_req *creq = skcipher_request_ctx(req);
 struct mv_cesa_skcipher_std_req *sreq = &creq->std;

 sreq->size = 0;
 sreq->offset = 0;
}
