
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_12__ ;


typedef int u32 ;
struct TYPE_17__ {TYPE_3__* first; TYPE_2__* last; } ;
struct mv_cesa_req {TYPE_4__ chain; } ;
struct mv_cesa_op_ctx {int dummy; } ;
struct mv_cesa_ahash_req {scalar_t__ src_nents; scalar_t__ cache_ptr; scalar_t__ last_req; int op_tmpl; struct mv_cesa_req base; } ;
struct TYPE_18__ {unsigned int op_len; scalar_t__ len; } ;
struct TYPE_19__ {scalar_t__ sg; } ;
struct mv_cesa_ahash_dma_iter {TYPE_6__ base; TYPE_7__ src; } ;
struct TYPE_14__ {int flags; } ;
struct ahash_request {int src; scalar_t__ nbytes; TYPE_1__ base; } ;
typedef int gfp_t ;
struct TYPE_16__ {int flags; } ;
struct TYPE_15__ {int flags; } ;
struct TYPE_13__ {int dev; } ;


 int CESA_TDMA_BREAK_CHAIN ;
 int CESA_TDMA_END_OF_REQ ;
 int CESA_TDMA_RESULT ;
 int CESA_TDMA_SET_STATE ;
 int CESA_TDMA_TYPE_MSK ;
 int CRYPTO_TFM_REQ_MAY_SLEEP ;
 int DMA_TO_DEVICE ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct mv_cesa_op_ctx*) ;
 int PTR_ERR (struct mv_cesa_op_ctx*) ;
 struct mv_cesa_ahash_req* ahash_request_ctx (struct ahash_request*) ;
 TYPE_12__* cesa_dev ;
 int dma_map_sg (int ,int ,scalar_t__,int ) ;
 int dma_unmap_sg (int ,int ,scalar_t__,int ) ;
 int mv_cesa_ahash_dma_add_cache (TYPE_4__*,struct mv_cesa_ahash_req*,int ) ;
 struct mv_cesa_op_ctx* mv_cesa_ahash_dma_last_req (TYPE_4__*,struct mv_cesa_ahash_dma_iter*,struct mv_cesa_ahash_req*,unsigned int,int ) ;
 int mv_cesa_ahash_last_cleanup (struct ahash_request*) ;
 int mv_cesa_ahash_req_iter_init (struct mv_cesa_ahash_dma_iter*,struct ahash_request*) ;
 int mv_cesa_ahash_req_iter_next_op (struct mv_cesa_ahash_dma_iter*) ;
 int mv_cesa_dma_add_dummy_end (TYPE_4__*,int ) ;
 struct mv_cesa_op_ctx* mv_cesa_dma_add_frag (TYPE_4__*,int *,unsigned int,int ) ;
 int mv_cesa_dma_add_op_transfers (TYPE_4__*,TYPE_6__*,TYPE_7__*,int ) ;
 int mv_cesa_dma_cleanup (struct mv_cesa_req*) ;
 int mv_cesa_mac_op_is_first_frag (int *) ;
 int mv_cesa_tdma_desc_iter_init (TYPE_4__*) ;

__attribute__((used)) static int mv_cesa_ahash_dma_req_init(struct ahash_request *req)
{
 struct mv_cesa_ahash_req *creq = ahash_request_ctx(req);
 gfp_t flags = (req->base.flags & CRYPTO_TFM_REQ_MAY_SLEEP) ?
        GFP_KERNEL : GFP_ATOMIC;
 struct mv_cesa_req *basereq = &creq->base;
 struct mv_cesa_ahash_dma_iter iter;
 struct mv_cesa_op_ctx *op = ((void*)0);
 unsigned int frag_len;
 bool set_state = 0;
 int ret;
 u32 type;

 basereq->chain.first = ((void*)0);
 basereq->chain.last = ((void*)0);

 if (!mv_cesa_mac_op_is_first_frag(&creq->op_tmpl))
  set_state = 1;

 if (creq->src_nents) {
  ret = dma_map_sg(cesa_dev->dev, req->src, creq->src_nents,
     DMA_TO_DEVICE);
  if (!ret) {
   ret = -ENOMEM;
   goto err;
  }
 }

 mv_cesa_tdma_desc_iter_init(&basereq->chain);
 mv_cesa_ahash_req_iter_init(&iter, req);





 ret = mv_cesa_ahash_dma_add_cache(&basereq->chain, creq, flags);
 if (ret)
  goto err_free_tdma;

 if (iter.src.sg) {





  while (1) {
   ret = mv_cesa_dma_add_op_transfers(&basereq->chain,
          &iter.base,
          &iter.src, flags);
   if (ret)
    goto err_free_tdma;

   frag_len = iter.base.op_len;

   if (!mv_cesa_ahash_req_iter_next_op(&iter))
    break;

   op = mv_cesa_dma_add_frag(&basereq->chain, &creq->op_tmpl,
        frag_len, flags);
   if (IS_ERR(op)) {
    ret = PTR_ERR(op);
    goto err_free_tdma;
   }
  }
 } else {

  frag_len = iter.base.op_len;
 }






 if (creq->last_req)
  op = mv_cesa_ahash_dma_last_req(&basereq->chain, &iter, creq,
      frag_len, flags);
 else if (frag_len)
  op = mv_cesa_dma_add_frag(&basereq->chain, &creq->op_tmpl,
       frag_len, flags);

 if (IS_ERR(op)) {
  ret = PTR_ERR(op);
  goto err_free_tdma;
 }







 type = basereq->chain.last->flags & CESA_TDMA_TYPE_MSK;

 if (op && type != CESA_TDMA_RESULT) {

  ret = mv_cesa_dma_add_dummy_end(&basereq->chain, flags);
  if (ret)
   goto err_free_tdma;
 }

 if (!creq->last_req)
  creq->cache_ptr = req->nbytes + creq->cache_ptr -
      iter.base.len;
 else
  creq->cache_ptr = 0;

 basereq->chain.last->flags |= CESA_TDMA_END_OF_REQ;

 if (type != CESA_TDMA_RESULT)
  basereq->chain.last->flags |= CESA_TDMA_BREAK_CHAIN;

 if (set_state) {





  basereq->chain.first->flags |= CESA_TDMA_SET_STATE;
 }

 return 0;

err_free_tdma:
 mv_cesa_dma_cleanup(basereq);
 dma_unmap_sg(cesa_dev->dev, req->src, creq->src_nents, DMA_TO_DEVICE);

err:
 mv_cesa_ahash_last_cleanup(req);

 return ret;
}
