
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct spacc_req {int result; TYPE_1__* req; int dst_addr; int dst_ddt; int src_addr; int src_ddt; } ;
struct ablkcipher_request {scalar_t__ src; scalar_t__ dst; int nbytes; } ;
struct TYPE_3__ {int (* complete ) (TYPE_1__*,int ) ;} ;


 int DMA_BIDIRECTIONAL ;
 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 struct ablkcipher_request* ablkcipher_request_cast (TYPE_1__*) ;
 int spacc_free_ddt (struct spacc_req*,int ,int ,scalar_t__,int ,int ) ;
 int stub1 (TYPE_1__*,int ) ;

__attribute__((used)) static void spacc_ablk_complete(struct spacc_req *req)
{
 struct ablkcipher_request *ablk_req = ablkcipher_request_cast(req->req);

 if (ablk_req->src != ablk_req->dst) {
  spacc_free_ddt(req, req->src_ddt, req->src_addr, ablk_req->src,
          ablk_req->nbytes, DMA_TO_DEVICE);
  spacc_free_ddt(req, req->dst_ddt, req->dst_addr, ablk_req->dst,
          ablk_req->nbytes, DMA_FROM_DEVICE);
 } else
  spacc_free_ddt(req, req->dst_ddt, req->dst_addr, ablk_req->dst,
          ablk_req->nbytes, DMA_BIDIRECTIONAL);

 req->req->complete(req->req, req->result);
}
