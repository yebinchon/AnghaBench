
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mv_cesa_ahash_std_req {scalar_t__ offset; } ;
struct TYPE_2__ {struct mv_cesa_ahash_std_req std; } ;
struct mv_cesa_ahash_req {TYPE_1__ req; } ;
struct ahash_request {int dummy; } ;


 struct mv_cesa_ahash_req* ahash_request_ctx (struct ahash_request*) ;

__attribute__((used)) static void mv_cesa_ahash_std_prepare(struct ahash_request *req)
{
 struct mv_cesa_ahash_req *creq = ahash_request_ctx(req);
 struct mv_cesa_ahash_std_req *sreq = &creq->req.std;

 sreq->offset = 0;
}
