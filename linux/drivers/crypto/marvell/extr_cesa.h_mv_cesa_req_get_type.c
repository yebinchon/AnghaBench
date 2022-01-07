
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ first; } ;
struct mv_cesa_req {TYPE_1__ chain; } ;
typedef enum mv_cesa_req_type { ____Placeholder_mv_cesa_req_type } mv_cesa_req_type ;


 int CESA_DMA_REQ ;
 int CESA_STD_REQ ;

__attribute__((used)) static inline enum mv_cesa_req_type
mv_cesa_req_get_type(struct mv_cesa_req *req)
{
 return req->chain.first ? CESA_DMA_REQ : CESA_STD_REQ;
}
